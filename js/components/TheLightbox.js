export default {
    name: 'TheLightboxComponent',

    props: {
        car: Object
    },

    template: `
    <div class="info-container">
        <div class="info-text">
            <div class="models-basic">
                <div>
                    <h3>The 2023 Mini {{car.name}} Convertible</h3>
                    <p>All-Inclusive Price: {{car.price}}</p>
                </div>

                <div class="text-wrapper">
                    <div><p><span>Lease</span><br>{{car.lease}}</p></div>
                    <div><p><span>Finance</span><br>{{car.finance}}</p></div>
                </div>
            </div>

            <div class="models-features">
                <ul>
                    <li v-for="feature in car.features">
                        {{ feature }}
                    </li>
                </ul>
            </div>
        </div>

        <div class="info-img">
            <img :src='"images/" + car.pic' alt="vehicle image">
        </div>
    </div>
    `,

}

