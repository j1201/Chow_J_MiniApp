// import components first!!!
import CarThumb from './components/TheCarThumbnail.js';
import LightBox from './components/TheLightbox.js';

(() => {
    // create vue instance here
    const { createApp } = Vue

    createApp({
        created() {
            // get your remote data here 
            fetch('./data/data.json')
                .then(res => res.json()) // convert the data into a plain js object
                .then(data => this.carData = data) // convert to things we can use
            .catch(error => {
                console.error(error);
                document.querySelector(".error").style.display = "block"
            });
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
                if (document.querySelector(".info-container")) {
                    // check if the same model is clicked again; if yes, close the lightbox; else, open the new selection
                    if(document.querySelector(".info-container").textContent.includes(this.lbData.price)){
                        this.showLB = false;
                    } else {
                        this.showLB = true;
                    };
                } else {
                    this.showLB = true;
                }
            }
        }
    }).mount('#app')
})()