/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!"
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};




var EquipmentIndexPage = {
  template: "#equipment-index-page",
  data: function() {
    return {
      equipments:[],
      checkedEquipment: {},
      exercises: []
    };
  },
  created: function() {
    axios
    .get("/api/equipments")
    .then(function(response) {
        this.equipments = response.data;
    }.bind(this));
  },
    methods: {
              requestExercises: function() {
                var clientParams = {checked: this.checkedEquipment};
                axios
                .get("/api/exercises", clientParams)
                .then(function(response) {
                  this.exercises = response.data;
                }.bind(this)); 

                }           
    },
    computed:{}
  };

var EquipmentShowPage = {
  template: "#equipments-show-page",
  data: function() {
    return {
      equipment:{
        id:" ",
        name:" "
      }
    };
  },
  created: function() {
    axios
    .get("/api/equipments/" + this.$route.params.id)
    .then(function(response) {
        this.equipment = response.data;
    }.bind(this));
  },
    methods: {},
    computed:{}
  };

var ExerciseIndexPage = {
  template: "#exercises-index-page",
  data: function() {
    return {
      exercises: [
                  {equipments: []}
                  ]
    };
  },
  created: function() {
    axios
    .get("/api/exercises")
    .then(function(response) {
      this.exercises = response.data;
    }.bind(this));
  },
    methods: {},
    computed:{}
  };

  var ExerciseShowPage = {
  template: "#exercises-show-page",
  data: function() {
    return {
      exercise:{
        id:" ",
        name:" ",
        description:"",
        image_url: " "
      }
    };
  },
  created: function() {
    axios
    .get("/api/exercises/" + this.$route.params.id)
    .then(function(response) {
        this.exercise = response.data;
        console.log(this.exercise);
    }.bind(this));
  },
    methods: {},
    computed:{}
  };






var router = new VueRouter({
  routes: [
            { path: "/", component: HomePage },
            {path: "/equipments", component: EquipmentIndexPage },
            {path: "/equipments/:id", component: EquipmentShowPage },
            {path: "/exercises", component: ExerciseIndexPage },
            {path: "/exercises/:id", component: ExerciseShowPage }

            ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});