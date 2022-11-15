// import components first!!!
import CarThumb from './components/TheCarThumbnail.js';
import LightBox from './components/TheLightbox.js';

(() => {
    // create vue instance here
    const { createApp } = Vue

    createApp({
        created() {
            // get your remote data here 
            fetch('./data.json')
                .then(res => res.json()) // convert the data into a plain js object
                .then(data => this.carData = data) // convert to things we can use
            .catch(error => console.error(error));
        },

        data() {
            return {
                carData: {},
                lbData: {},
                showLB: false
            }
        },

        components: {
            thecarthumb: CarThumb,
            thelightbox: LightBox
        },

        methods: {
            loadLightbox(car) {
                // set the lightbox data/ render it
                this.lbData = car;

                //show the lightbox
                if (this.showLB == true) {
                    this.showLB = false;
                } else {
                    this.showLB = true;
                };
            }
        }
    }).mount('#app')
})()