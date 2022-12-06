export default {
    name: "TheCarThumb",

    props: {
        car: Object
    },

    template: `
    <div @click="loadLBData" class="models-img">
        <img :src='"images/" + car.pic' alt="vehicle image" style="width:200px;">
        <p>{{car.name}}</p>
        <i class="fa-solid fa-chevron-down" ref="downarrow"></i>
    </div>
    `,

    methods: {
        loadLBData() {
            this.$emit('loadlbdata', this.car);
        }
    }
}
