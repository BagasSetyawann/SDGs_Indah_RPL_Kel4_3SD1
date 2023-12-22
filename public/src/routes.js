import HomeIndah from './components/HomeIndah.vue'
import LoginIndah from './components/LoginIndah.vue'
import HomeSdgs from './components/HomeSdgs.vue'
import TujuanSdgs from './components/TujuanSdgs.vue'
import IndikatorSdgs from './components/IndikatorSdgs.vue'
import DatasetSdgs from './components/DatasetSdgs.vue'
import EksplorData from './components/EksplorData.vue'
import InputData from './components/InputData.vue'
import Flagging from './components/Flagging.vue'
import Pengembangan from './components/Pengembangan.vue'
import DatasetFlag from './components/DatasetFlag.vue'

export default [
    { path: '/', component: HomeIndah },
    { path: '/login', component: LoginIndah },
    { path: '/sdgs', component: HomeSdgs },
    { path: '/sdgs/indikator/:indikator', component: IndikatorSdgs },
    { path: '/sdgs/dataset/:dataset', component: DatasetSdgs },
    { path: '/sdgs/dataset/flag/:dataset', component: DatasetFlag },
    { path: '/sdgs/eksplor', component: EksplorData },
    { path: '/sdgs/input', component: InputData },
    { path: '/sdgs/flagging', component: Flagging },
    { path: '/sdgs/:tujuan', component: TujuanSdgs, props: true },
    { path: '/dev', component: Pengembangan },
]
   
