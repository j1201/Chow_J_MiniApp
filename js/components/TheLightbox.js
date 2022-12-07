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
                    <h3>The 2023 Mini {{car.mini_name}} Convertible</h3>
                    <p>All-Inclusive Price: {{car.mini_price}}</p>
                </div>

                <div class="text-wrapper">
                    <div><p><span>Lease</span><br>{{car.mini_lease}}</p></div>
                    <div><p><span>Finance</span><br>{{car.mini_finance}}</p></div>
                </div>
            </div>

            <div class="models-features">
                <ul>
                    <li v-for="feature in car.feature.split(',')">
                        {{ feature }}
                    </li>
                </ul>
            </div>
        </div>

        <div class="info-img">
            <img :src='"images/" + car.mini_pic' alt="vehicle image">
        </div>
    </div>
    `,

}

