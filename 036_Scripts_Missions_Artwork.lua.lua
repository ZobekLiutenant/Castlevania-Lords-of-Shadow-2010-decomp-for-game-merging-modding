function Artwork.Reset()
  Artwork.VideoItem = nil
  
  Artwork.FirstLine = 1
  Artwork.LastSelectedLine = ""
  Artwork.ArtworkControlName = ""
  Artwork.NextArtworkName = ""
  Artwork.NextArtworkName2 = ""
  Artwork.PrevArtworkName = ""
  Artwork.NumBackwardSteps = 0
  Artwork.NumForwardSteps = 0
  Artwork.NumForwardSteps2 = 0
  Artwork.Timer = 0
  Artwork.FadeTimer = 1
  Artwork.MaxTime = 3
  Artwork.TimeToFade = 0.25
end

Artwork.Reset()
Artwork.FirstDLCArtwork = 311
Artwork.NumTotalArtwork = 406
Artwork.SecondDLCArtwork = 393
Artwork.IsShowingArtwork = false
Artwork.PricesTable = {
  Artwork_1 = {
    "Artwork_ArtworkName_01",
    10
  },
  Artwork_2 = {
    "Artwork_ArtworkName_02",
    5
  },
  Artwork_3 = {
    "Artwork_ArtworkName_03",
    10
  },
  Artwork_4 = {
    "Artwork_ArtworkName_04",
    5
  },
  Artwork_5 = {
    "Artwork_ArtworkName_05",
    25
  },
  Artwork_6 = {
    "Artwork_ArtworkName_06",
    5
  },
  Artwork_7 = {
    "Artwork_ArtworkName_07",
    10
  },
  Artwork_8 = {
    "Artwork_ArtworkName_08",
    5
  },
  Artwork_9 = {
    "Artwork_ArtworkName_09",
    10
  },
  Artwork_10 = {
    "Artwork_ArtworkName_10",
    5
  },
  Artwork_11 = {
    "Artwork_ArtworkName_11",
    10
  },
  Artwork_12 = {
    "Artwork_ArtworkName_12",
    5
  },
  Artwork_13 = {
    "Artwork_ArtworkName_13",
    5
  },
  Artwork_14 = {
    "Artwork_ArtworkName_14",
    25
  },
  Artwork_15 = {
    "Artwork_ArtworkName_15",
    10
  },
  Artwork_16 = {
    "Artwork_ArtworkName_16",
    5
  },
  Artwork_17 = {
    "Artwork_ArtworkName_17",
    25
  },
  Artwork_18 = {
    "Artwork_ArtworkName_18",
    10
  },
  Artwork_19 = {
    "Artwork_ArtworkName_19",
    10
  },
  Artwork_20 = {
    "Artwork_ArtworkName_20",
    10
  },
  Artwork_21 = {
    "Artwork_ArtworkName_21",
    25
  },
  Artwork_22 = {
    "Artwork_ArtworkName_22",
    10
  },
  Artwork_23 = {
    "Artwork_ArtworkName_23",
    5
  },
  Artwork_24 = {
    "Artwork_ArtworkName_24",
    10
  },
  Artwork_25 = {
    "Artwork_ArtworkName_25",
    5
  },
  Artwork_26 = {
    "Artwork_ArtworkName_26",
    10
  },
  Artwork_27 = {
    "Artwork_ArtworkName_27",
    25
  },
  Artwork_28 = {
    "Artwork_ArtworkName_28",
    25
  },
  Artwork_29 = {
    "Artwork_ArtworkName_29",
    10
  },
  Artwork_30 = {
    "Artwork_ArtworkName_30",
    10
  },
  Artwork_31 = {
    "Artwork_ArtworkName_31",
    25
  },
  Artwork_32 = {
    "Artwork_ArtworkName_32",
    10
  },
  Artwork_33 = {
    "Artwork_ArtworkName_33",
    5
  },
  Artwork_34 = {
    "Artwork_ArtworkName_34",
    10
  },
  Artwork_35 = {
    "Artwork_ArtworkName_35",
    5
  },
  Artwork_36 = {
    "Artwork_ArtworkName_36",
    10
  },
  Artwork_37 = {
    "Artwork_ArtworkName_37",
    5
  },
  Artwork_38 = {
    "Artwork_ArtworkName_38",
    5
  },
  Artwork_39 = {
    "Artwork_ArtworkName_39",
    10
  },
  Artwork_40 = {
    "Artwork_ArtworkName_40",
    5
  },
  Artwork_41 = {
    "Artwork_ArtworkName_41",
    5
  },
  Artwork_42 = {
    "Artwork_ArtworkName_42",
    10
  },
  Artwork_43 = {
    "Artwork_ArtworkName_43",
    5
  },
  Artwork_44 = {
    "Artwork_ArtworkName_44",
    25
  },
  Artwork_45 = {
    "Artwork_ArtworkName_45",
    10
  },
  Artwork_46 = {
    "Artwork_ArtworkName_46",
    10
  },
  Artwork_47 = {
    "Artwork_ArtworkName_47",
    5
  },
  Artwork_48 = {
    "Artwork_ArtworkName_48",
    10
  },
  Artwork_49 = {
    "Artwork_ArtworkName_49",
    5
  },
  Artwork_50 = {
    "Artwork_ArtworkName_50",
    5
  },
  Artwork_51 = {
    "Artwork_ArtworkName_51",
    5
  },
  Artwork_52 = {
    "Artwork_ArtworkName_52",
    25
  },
  Artwork_53 = {
    "Artwork_ArtworkName_53",
    5
  },
  Artwork_54 = {
    "Artwork_ArtworkName_54",
    5
  },
  Artwork_55 = {
    "Artwork_ArtworkName_55",
    10
  },
  Artwork_56 = {
    "Artwork_ArtworkName_56",
    5
  },
  Artwork_57 = {
    "Artwork_ArtworkName_57",
    10
  },
  Artwork_58 = {
    "Artwork_ArtworkName_58",
    10
  },
  Artwork_59 = {
    "Artwork_ArtworkName_59",
    25
  },
  Artwork_60 = {
    "Artwork_ArtworkName_60",
    5
  },
  Artwork_61 = {
    "Artwork_ArtworkName_61",
    10
  },
  Artwork_62 = {
    "Artwork_ArtworkName_62",
    5
  },
  Artwork_63 = {
    "Artwork_ArtworkName_63",
    10
  },
  Artwork_64 = {
    "Artwork_ArtworkName_64",
    5
  },
  Artwork_65 = {
    "Artwork_ArtworkName_65",
    10
  },
  Artwork_66 = {
    "Artwork_ArtworkName_66",
    5
  },
  Artwork_67 = {
    "Artwork_ArtworkName_67",
    5
  },
  Artwork_68 = {
    "Artwork_ArtworkName_68",
    5
  },
  Artwork_69 = {
    "Artwork_ArtworkName_69",
    5
  },
  Artwork_70 = {
    "Artwork_ArtworkName_70",
    10
  },
  Artwork_71 = {
    "Artwork_ArtworkName_71",
    10
  },
  Artwork_72 = {
    "Artwork_ArtworkName_72",
    5
  },
  Artwork_73 = {
    "Artwork_ArtworkName_73",
    25
  },
  Artwork_74 = {
    "Artwork_ArtworkName_74",
    10
  },
  Artwork_75 = {
    "Artwork_ArtworkName_75",
    10
  },
  Artwork_76 = {
    "Artwork_ArtworkName_76",
    10
  },
  Artwork_77 = {
    "Artwork_ArtworkName_77",
    5
  },
  Artwork_78 = {
    "Artwork_ArtworkName_78",
    5
  },
  Artwork_79 = {
    "Artwork_ArtworkName_79",
    5
  },
  Artwork_80 = {
    "Artwork_ArtworkName_80",
    5
  },
  Artwork_81 = {
    "Artwork_ArtworkName_81",
    10
  },
  Artwork_82 = {
    "Artwork_ArtworkName_82",
    10
  },
  Artwork_83 = {
    "Artwork_ArtworkName_83",
    5
  },
  Artwork_84 = {
    "Artwork_ArtworkName_84",
    10
  },
  Artwork_85 = {
    "Artwork_ArtworkName_85",
    25
  },
  Artwork_86 = {
    "Artwork_ArtworkName_86",
    10
  },
  Artwork_87 = {
    "Artwork_ArtworkName_87",
    25
  },
  Artwork_88 = {
    "Artwork_ArtworkName_88",
    10
  },
  Artwork_89 = {
    "Artwork_ArtworkName_89",
    10
  },
  Artwork_90 = {
    "Artwork_ArtworkName_90",
    5
  },
  Artwork_91 = {
    "Artwork_ArtworkName_91",
    5
  },
  Artwork_92 = {
    "Artwork_ArtworkName_92",
    10
  },
  Artwork_93 = {
    "Artwork_ArtworkName_93",
    5
  },
  Artwork_94 = {
    "Artwork_ArtworkName_94",
    5
  },
  Artwork_95 = {
    "Artwork_ArtworkName_95",
    25
  },
  Artwork_96 = {
    "Artwork_ArtworkName_96",
    10
  },
  Artwork_97 = {
    "Artwork_ArtworkName_97",
    10
  },
  Artwork_98 = {
    "Artwork_ArtworkName_98",
    5
  },
  Artwork_99 = {
    "Artwork_ArtworkName_99",
    10
  },
  Artwork_100 = {
    "Artwork_ArtworkName_100",
    10
  },
  Artwork_101 = {
    "Artwork_ArtworkName_101",
    10
  },
  Artwork_102 = {
    "Artwork_ArtworkName_102",
    25
  },
  Artwork_103 = {
    "Artwork_ArtworkName_103",
    10
  },
  Artwork_104 = {
    "Artwork_ArtworkName_104",
    10
  },
  Artwork_105 = {
    "Artwork_ArtworkName_105",
    5
  },
  Artwork_106 = {
    "Artwork_ArtworkName_106",
    5
  },
  Artwork_107 = {
    "Artwork_ArtworkName_107",
    10
  },
  Artwork_108 = {
    "Artwork_ArtworkName_108",
    10
  },
  Artwork_109 = {
    "Artwork_ArtworkName_109",
    5
  },
  Artwork_110 = {
    "Artwork_ArtworkName_110",
    5
  },
  Artwork_111 = {
    "Artwork_ArtworkName_111",
    10
  },
  Artwork_112 = {
    "Artwork_ArtworkName_112",
    10
  },
  Artwork_113 = {
    "Artwork_ArtworkName_113",
    10
  },
  Artwork_114 = {
    "Artwork_ArtworkName_114",
    5
  },
  Artwork_115 = {
    "Artwork_ArtworkName_115",
    5
  },
  Artwork_116 = {
    "Artwork_ArtworkName_116",
    25
  },
  Artwork_117 = {
    "Artwork_ArtworkName_117",
    10
  },
  Artwork_118 = {
    "Artwork_ArtworkName_118",
    5
  },
  Artwork_119 = {
    "Artwork_ArtworkName_119",
    10
  },
  Artwork_120 = {
    "Artwork_ArtworkName_120",
    5
  },
  Artwork_121 = {
    "Artwork_ArtworkName_121",
    10
  },
  Artwork_122 = {
    "Artwork_ArtworkName_122",
    5
  },
  Artwork_123 = {
    "Artwork_ArtworkName_123",
    10
  },
  Artwork_124 = {
    "Artwork_ArtworkName_124",
    5
  },
  Artwork_125 = {
    "Artwork_ArtworkName_125",
    10
  },
  Artwork_126 = {
    "Artwork_ArtworkName_126",
    10
  },
  Artwork_127 = {
    "Artwork_ArtworkName_127",
    5
  },
  Artwork_128 = {
    "Artwork_ArtworkName_128",
    5
  },
  Artwork_129 = {
    "Artwork_ArtworkName_129",
    5
  },
  Artwork_130 = {
    "Artwork_ArtworkName_130",
    10
  },
  Artwork_131 = {
    "Artwork_ArtworkName_131",
    25
  },
  Artwork_132 = {
    "Artwork_ArtworkName_132",
    10
  },
  Artwork_133 = {
    "Artwork_ArtworkName_133",
    10
  },
  Artwork_134 = {
    "Artwork_ArtworkName_134",
    5
  },
  Artwork_135 = {
    "Artwork_ArtworkName_135",
    10
  },
  Artwork_136 = {
    "Artwork_ArtworkName_136",
    10
  },
  Artwork_137 = {
    "Artwork_ArtworkName_137",
    5
  },
  Artwork_138 = {
    "Artwork_ArtworkName_138",
    5
  },
  Artwork_139 = {
    "Artwork_ArtworkName_139",
    5
  },
  Artwork_140 = {
    "Artwork_ArtworkName_140",
    25
  },
  Artwork_141 = {
    "Artwork_ArtworkName_141",
    10
  },
  Artwork_142 = {
    "Artwork_ArtworkName_142",
    5
  },
  Artwork_143 = {
    "Artwork_ArtworkName_143",
    10
  },
  Artwork_144 = {
    "Artwork_ArtworkName_144",
    10
  },
  Artwork_145 = {
    "Artwork_ArtworkName_145",
    10
  },
  Artwork_146 = {
    "Artwork_ArtworkName_146",
    10
  },
  Artwork_147 = {
    "Artwork_ArtworkName_147",
    5
  },
  Artwork_148 = {
    "Artwork_ArtworkName_148",
    5
  },
  Artwork_149 = {
    "Artwork_ArtworkName_149",
    5
  },
  Artwork_150 = {
    "Artwork_ArtworkName_150",
    5
  },
  Artwork_151 = {
    "Artwork_ArtworkName_151",
    10
  },
  Artwork_152 = {
    "Artwork_ArtworkName_152",
    5
  },
  Artwork_153 = {
    "Artwork_ArtworkName_153",
    10
  },
  Artwork_154 = {
    "Artwork_ArtworkName_154",
    5
  },
  Artwork_155 = {
    "Artwork_ArtworkName_155",
    10
  },
  Artwork_156 = {
    "Artwork_ArtworkName_156",
    5
  },
  Artwork_157 = {
    "Artwork_ArtworkName_157",
    10
  },
  Artwork_158 = {
    "Artwork_ArtworkName_158",
    10
  },
  Artwork_159 = {
    "Artwork_ArtworkName_159",
    5
  },
  Artwork_160 = {
    "Artwork_ArtworkName_160",
    10
  },
  Artwork_161 = {
    "Artwork_ArtworkName_161",
    5
  },
  Artwork_162 = {
    "Artwork_ArtworkName_162",
    10
  },
  Artwork_163 = {
    "Artwork_ArtworkName_163",
    10
  },
  Artwork_164 = {
    "Artwork_ArtworkName_164",
    5
  },
  Artwork_165 = {
    "Artwork_ArtworkName_165",
    10
  },
  Artwork_166 = {
    "Artwork_ArtworkName_166",
    5
  },
  Artwork_167 = {
    "Artwork_ArtworkName_167",
    25
  },
  Artwork_168 = {
    "Artwork_ArtworkName_168",
    5
  },
  Artwork_169 = {
    "Artwork_ArtworkName_169",
    10
  },
  Artwork_170 = {
    "Artwork_ArtworkName_170",
    5
  },
  Artwork_171 = {
    "Artwork_ArtworkName_171",
    25
  },
  Artwork_172 = {
    "Artwork_ArtworkName_172",
    5
  },
  Artwork_173 = {
    "Artwork_ArtworkName_173",
    5
  },
  Artwork_174 = {
    "Artwork_ArtworkName_174",
    5
  },
  Artwork_175 = {
    "Artwork_ArtworkName_175",
    5
  },
  Artwork_176 = {
    "Artwork_ArtworkName_176",
    10
  },
  Artwork_177 = {
    "Artwork_ArtworkName_177",
    25
  },
  Artwork_178 = {
    "Artwork_ArtworkName_178",
    5
  },
  Artwork_179 = {
    "Artwork_ArtworkName_179",
    10
  },
  Artwork_180 = {
    "Artwork_ArtworkName_180",
    5
  },
  Artwork_181 = {
    "Artwork_ArtworkName_181",
    10
  },
  Artwork_182 = {
    "Artwork_ArtworkName_182",
    5
  },
  Artwork_183 = {
    "Artwork_ArtworkName_183",
    5
  },
  Artwork_184 = {
    "Artwork_ArtworkName_184",
    10
  },
  Artwork_185 = {
    "Artwork_ArtworkName_185",
    5
  },
  Artwork_186 = {
    "Artwork_ArtworkName_186",
    25
  },
  Artwork_187 = {
    "Artwork_ArtworkName_187",
    25
  },
  Artwork_188 = {
    "Artwork_ArtworkName_188",
    10
  },
  Artwork_189 = {
    "Artwork_ArtworkName_189",
    10
  },
  Artwork_190 = {
    "Artwork_ArtworkName_190",
    5
  },
  Artwork_191 = {
    "Artwork_ArtworkName_191",
    5
  },
  Artwork_192 = {
    "Artwork_ArtworkName_192",
    10
  },
  Artwork_193 = {
    "Artwork_ArtworkName_193",
    10
  },
  Artwork_194 = {
    "Artwork_ArtworkName_194",
    10
  },
  Artwork_195 = {
    "Artwork_ArtworkName_195",
    25
  },
  Artwork_196 = {
    "Artwork_ArtworkName_196",
    10
  },
  Artwork_197 = {
    "Artwork_ArtworkName_197",
    10
  },
  Artwork_198 = {
    "Artwork_ArtworkName_198",
    10
  },
  Artwork_199 = {
    "Artwork_ArtworkName_199",
    5
  },
  Artwork_200 = {
    "Artwork_ArtworkName_200",
    5
  },
  Artwork_201 = {
    "Artwork_ArtworkName_201",
    5
  },
  Artwork_202 = {
    "Artwork_ArtworkName_202",
    10
  },
  Artwork_203 = {
    "Artwork_ArtworkName_203",
    5
  },
  Artwork_204 = {
    "Artwork_ArtworkName_204",
    25
  },
  Artwork_205 = {
    "Artwork_ArtworkName_205",
    10
  },
  Artwork_206 = {
    "Artwork_ArtworkName_206",
    5
  },
  Artwork_207 = {
    "Artwork_ArtworkName_207",
    10
  },
  Artwork_208 = {
    "Artwork_ArtworkName_208",
    10
  },
  Artwork_209 = {
    "Artwork_ArtworkName_209",
    10
  },
  Artwork_210 = {
    "Artwork_ArtworkName_210",
    5
  },
  Artwork_211 = {
    "Artwork_ArtworkName_211",
    5
  },
  Artwork_212 = {
    "Artwork_ArtworkName_212",
    5
  },
  Artwork_213 = {
    "Artwork_ArtworkName_213",
    10
  },
  Artwork_214 = {
    "Artwork_ArtworkName_214",
    5
  },
  Artwork_215 = {
    "Artwork_ArtworkName_215",
    10
  },
  Artwork_216 = {
    "Artwork_ArtworkName_216",
    25
  },
  Artwork_217 = {
    "Artwork_ArtworkName_217",
    10
  },
  Artwork_218 = {
    "Artwork_ArtworkName_218",
    25
  },
  Artwork_219 = {
    "Artwork_ArtworkName_219",
    5
  },
  Artwork_220 = {
    "Artwork_ArtworkName_220",
    5
  },
  Artwork_221 = {
    "Artwork_ArtworkName_221",
    5
  },
  Artwork_222 = {
    "Artwork_ArtworkName_222",
    10
  },
  Artwork_223 = {
    "Artwork_ArtworkName_223",
    25
  },
  Artwork_224 = {
    "Artwork_ArtworkName_224",
    5
  },
  Artwork_225 = {
    "Artwork_ArtworkName_225",
    10
  },
  Artwork_226 = {
    "Artwork_ArtworkName_226",
    5
  },
  Artwork_227 = {
    "Artwork_ArtworkName_227",
    10
  },
  Artwork_228 = {
    "Artwork_ArtworkName_228",
    5
  },
  Artwork_229 = {
    "Artwork_ArtworkName_229",
    10
  },
  Artwork_230 = {
    "Artwork_ArtworkName_230",
    25
  },
  Artwork_231 = {
    "Artwork_ArtworkName_231",
    5
  },
  Artwork_232 = {
    "Artwork_ArtworkName_232",
    10
  },
  Artwork_233 = {
    "Artwork_ArtworkName_233",
    5
  },
  Artwork_234 = {
    "Artwork_ArtworkName_234",
    5
  },
  Artwork_235 = {
    "Artwork_ArtworkName_235",
    5
  },
  Artwork_236 = {
    "Artwork_ArtworkName_236",
    5
  },
  Artwork_237 = {
    "Artwork_ArtworkName_237",
    10
  },
  Artwork_238 = {
    "Artwork_ArtworkName_238",
    10
  },
  Artwork_239 = {
    "Artwork_ArtworkName_239",
    25
  },
  Artwork_240 = {
    "Artwork_ArtworkName_240",
    10
  },
  Artwork_241 = {
    "Artwork_ArtworkName_241",
    10
  },
  Artwork_242 = {
    "Artwork_ArtworkName_242",
    5
  },
  Artwork_243 = {
    "Artwork_ArtworkName_243",
    5
  },
  Artwork_244 = {
    "Artwork_ArtworkName_244",
    10
  },
  Artwork_245 = {
    "Artwork_ArtworkName_245",
    10
  },
  Artwork_246 = {
    "Artwork_ArtworkName_246",
    10
  },
  Artwork_247 = {
    "Artwork_ArtworkName_247",
    5
  },
  Artwork_248 = {
    "Artwork_ArtworkName_248",
    10
  },
  Artwork_249 = {
    "Artwork_ArtworkName_249",
    10
  },
  Artwork_250 = {
    "Artwork_ArtworkName_250",
    5
  },
  Artwork_251 = {
    "Artwork_ArtworkName_251",
    5
  },
  Artwork_252 = {
    "Artwork_ArtworkName_252",
    25
  },
  Artwork_253 = {
    "Artwork_ArtworkName_253",
    10
  },
  Artwork_254 = {
    "Artwork_ArtworkName_254",
    10
  },
  Artwork_255 = {
    "Artwork_ArtworkName_255",
    10
  },
  Artwork_256 = {
    "Artwork_ArtworkName_256",
    10
  },
  Artwork_257 = {
    "Artwork_ArtworkName_257",
    25
  },
  Artwork_258 = {
    "Artwork_ArtworkName_258",
    10
  },
  Artwork_259 = {
    "Artwork_ArtworkName_259",
    5
  },
  Artwork_260 = {
    "Artwork_ArtworkName_260",
    10
  },
  Artwork_261 = {
    "Artwork_ArtworkName_261",
    5
  },
  Artwork_262 = {
    "Artwork_ArtworkName_262",
    10
  },
  Artwork_263 = {
    "Artwork_ArtworkName_263",
    25
  },
  Artwork_264 = {
    "Artwork_ArtworkName_264",
    5
  },
  Artwork_265 = {
    "Artwork_ArtworkName_265",
    10
  },
  Artwork_266 = {
    "Artwork_ArtworkName_266",
    5
  },
  Artwork_267 = {
    "Artwork_ArtworkName_267",
    5
  },
  Artwork_268 = {
    "Artwork_ArtworkName_268",
    25
  },
  Artwork_269 = {
    "Artwork_ArtworkName_269",
    5
  },
  Artwork_270 = {
    "Artwork_ArtworkName_270",
    10
  },
  Artwork_271 = {
    "Artwork_ArtworkName_271",
    5
  },
  Artwork_272 = {
    "Artwork_ArtworkName_272",
    10
  },
  Artwork_273 = {
    "Artwork_ArtworkName_273",
    10
  },
  Artwork_274 = {
    "Artwork_ArtworkName_274",
    25
  },
  Artwork_275 = {
    "Artwork_ArtworkName_275",
    10
  },
  Artwork_276 = {
    "Artwork_ArtworkName_276",
    10
  },
  Artwork_277 = {
    "Artwork_ArtworkName_277",
    5
  },
  Artwork_278 = {
    "Artwork_ArtworkName_278",
    10
  },
  Artwork_279 = {
    "Artwork_ArtworkName_279",
    5
  },
  Artwork_280 = {
    "Artwork_ArtworkName_280",
    5
  },
  Artwork_281 = {
    "Artwork_ArtworkName_281",
    25
  },
  Artwork_282 = {
    "Artwork_ArtworkName_282",
    10
  },
  Artwork_283 = {
    "Artwork_ArtworkName_283",
    5
  },
  Artwork_284 = {
    "Artwork_ArtworkName_284",
    5
  },
  Artwork_285 = {
    "Artwork_ArtworkName_285",
    10
  },
  Artwork_286 = {
    "Artwork_ArtworkName_286",
    10
  },
  Artwork_287 = {
    "Artwork_ArtworkName_287",
    10
  },
  Artwork_288 = {
    "Artwork_ArtworkName_288",
    5
  },
  Artwork_289 = {
    "Artwork_ArtworkName_289",
    5
  },
  Artwork_290 = {
    "Artwork_ArtworkName_290",
    5
  },
  Artwork_291 = {
    "Artwork_ArtworkName_291",
    10
  },
  Artwork_292 = {
    "Artwork_ArtworkName_292",
    5
  },
  Artwork_293 = {
    "Artwork_ArtworkName_293",
    25
  },
  Artwork_294 = {
    "Artwork_ArtworkName_294",
    10
  },
  Artwork_295 = {
    "Artwork_ArtworkName_295",
    5
  },
  Artwork_296 = {
    "Artwork_ArtworkName_296",
    10
  },
  Artwork_297 = {
    "Artwork_ArtworkName_297",
    10
  },
  Artwork_298 = {
    "Artwork_ArtworkName_298",
    5
  },
  Artwork_299 = {
    "Artwork_ArtworkName_299",
    10
  },
  Artwork_300 = {
    "Artwork_ArtworkName_300",
    25
  },
  Artwork_301 = {
    "Artwork_ArtworkName_301",
    10
  },
  Artwork_302 = {
    "Artwork_ArtworkName_302",
    10
  },
  Artwork_303 = {
    "Artwork_ArtworkName_303",
    5
  },
  Artwork_304 = {
    "Artwork_ArtworkName_304",
    5
  },
  Artwork_305 = {
    "Artwork_ArtworkName_305",
    10
  },
  Artwork_306 = {
    "Artwork_ArtworkName_306",
    5
  },
  Artwork_307 = {
    "Artwork_ArtworkName_307",
    10
  },
  Artwork_308 = {
    "Artwork_ArtworkName_308",
    5
  },
  Artwork_309 = {
    "Artwork_ArtworkName_309",
    10
  },
  Artwork_310 = {
    "Artwork_ArtworkName_310",
    5
  },
  _311 = {
    "Artwork_ArtworkName_311",
    25
  },
  _312 = {
    "Artwork_ArtworkName_312",
    15
  },
  _313 = {
    "Artwork_ArtworkName_313",
    50
  },
  _314 = {
    "Artwork_ArtworkName_314",
    50
  },
  _315 = {
    "Artwork_ArtworkName_315",
    50
  },
  _316 = {
    "Artwork_ArtworkName_316",
    50
  },
  _317 = {
    "Artwork_ArtworkName_317",
    25
  },
  _318 = {
    "Artwork_ArtworkName_318",
    50
  },
  _319 = {
    "Artwork_ArtworkName_319",
    15
  },
  _320 = {
    "Artwork_ArtworkName_320",
    50
  },
  _321 = {
    "Artwork_ArtworkName_321",
    25
  },
  _322 = {
    "Artwork_ArtworkName_322",
    25
  },
  _323 = {
    "Artwork_ArtworkName_323",
    25
  },
  _324 = {
    "Artwork_ArtworkName_324",
    25
  },
  _325 = {
    "Artwork_ArtworkName_325",
    75
  },
  _326 = {
    "Artwork_ArtworkName_326",
    75
  },
  _327 = {
    "Artwork_ArtworkName_327",
    75
  },
  _328 = {
    "Artwork_ArtworkName_328",
    25
  },
  _329 = {
    "Artwork_ArtworkName_329",
    15
  },
  _330 = {
    "Artwork_ArtworkName_330",
    15
  },
  _331 = {
    "Artwork_ArtworkName_331",
    50
  },
  _332 = {
    "Artwork_ArtworkName_332",
    100
  },
  _333 = {
    "Artwork_ArtworkName_333",
    100
  },
  _334 = {
    "Artwork_ArtworkName_334",
    100
  },
  _335 = {
    "Artwork_ArtworkName_335",
    100
  },
  _336 = {
    "Artwork_ArtworkName_336",
    100
  },
  _337 = {
    "Artwork_ArtworkName_337",
    100
  },
  _338 = {
    "Artwork_ArtworkName_338",
    100
  },
  _339 = {
    "Artwork_ArtworkName_339",
    100
  },
  _340 = {
    "Artwork_ArtworkName_340",
    100
  },
  _341 = {
    "Artwork_ArtworkName_341",
    100
  },
  _342 = {
    "Artwork_ArtworkName_342",
    100
  },
  _343 = {
    "Artwork_ArtworkName_343",
    100
  },
  _344 = {
    "Artwork_ArtworkName_344",
    100
  },
  _345 = {
    "Artwork_ArtworkName_345",
    100
  },
  _346 = {
    "Artwork_ArtworkName_346",
    100
  },
  _347 = {
    "Artwork_ArtworkName_347",
    100
  },
  _348 = {
    "Artwork_ArtworkName_348",
    100
  },
  _349 = {
    "Artwork_ArtworkName_349",
    100
  },
  _350 = {
    "Artwork_ArtworkName_350",
    100
  },
  _351 = {
    "Artwork_ArtworkName_351",
    100
  },
  _352 = {
    "Artwork_ArtworkName_352",
    100
  },
  _353 = {
    "Artwork_ArtworkName_353",
    100
  },
  _354 = {
    "Artwork_ArtworkName_354",
    100
  },
  _355 = {
    "Artwork_ArtworkName_355",
    100
  },
  _356 = {
    "Artwork_ArtworkName_356",
    100
  },
  _357 = {
    "Artwork_ArtworkName_357",
    100
  },
  _358 = {
    "Artwork_ArtworkName_358",
    100
  },
  _359 = {
    "Artwork_ArtworkName_359",
    100
  },
  _360 = {
    "Artwork_ArtworkName_360",
    100
  },
  _361 = {
    "Artwork_ArtworkName_361",
    100
  },
  _362 = {
    "Artwork_ArtworkName_362",
    100
  },
  _363 = {
    "Artwork_ArtworkName_363",
    100
  },
  _364 = {
    "Artwork_ArtworkName_364",
    100
  },
  _365 = {
    "Artwork_ArtworkName_365",
    100
  },
  _366 = {
    "Artwork_ArtworkName_366",
    100
  },
  _367 = {
    "Artwork_ArtworkName_367",
    100
  },
  _368 = {
    "Artwork_ArtworkName_368",
    100
  },
  _369 = {
    "Artwork_ArtworkName_369",
    100
  },
  _370 = {
    "Artwork_ArtworkName_370",
    100
  },
  _371 = {
    "Artwork_ArtworkName_371",
    100
  },
  _372 = {
    "Artwork_ArtworkName_372",
    100
  },
  _373 = {
    "Artwork_ArtworkName_373",
    100
  },
  _374 = {
    "Artwork_ArtworkName_374",
    100
  },
  _375 = {
    "Artwork_ArtworkName_375",
    100
  },
  _376 = {
    "Artwork_ArtworkName_376",
    100
  },
  _377 = {
    "Artwork_ArtworkName_377",
    100
  },
  _378 = {
    "Artwork_ArtworkName_378",
    100
  },
  _379 = {
    "Artwork_ArtworkName_379",
    100
  },
  _380 = {
    "Artwork_ArtworkName_380",
    100
  },
  _381 = {
    "Artwork_ArtworkName_381",
    100
  },
  _382 = {
    "Artwork_ArtworkName_382",
    100
  },
  _383 = {
    "Artwork_ArtworkName_383",
    100
  },
  _384 = {
    "Artwork_ArtworkName_384",
    100
  },
  _385 = {
    "Artwork_ArtworkName_385",
    100
  },
  _386 = {
    "Artwork_ArtworkName_386",
    100
  },
  _387 = {
    "Artwork_ArtworkName_387",
    100
  },
  _388 = {
    "Artwork_ArtworkName_388",
    100
  },
  _389 = {
    "Artwork_ArtworkName_389",
    100
  },
  _390 = {
    "Artwork_ArtworkName_390",
    100
  },
  _391 = {
    "Artwork_ArtworkName_391",
    100
  },
  _392 = {
    "Artwork_ArtworkName_392",
    100
  },
  _393 = {
    "Artwork_ArtworkName_393",
    100
  },
  _394 = {
    "Artwork_ArtworkName_394",
    100
  },
  _395 = {
    "Artwork_ArtworkName_395",
    100
  },
  _396 = {
    "Artwork_ArtworkName_396",
    100
  },
  _397 = {
    "Artwork_ArtworkName_397",
    100
  },
  _398 = {
    "Artwork_ArtworkName_398",
    100
  },
  _399 = {
    "Artwork_ArtworkName_399",
    100
  },
  _400 = {
    "Artwork_ArtworkName_400",
    100
  },
  _401 = {
    "Artwork_ArtworkName_401",
    100
  },
  _402 = {
    "Artwork_ArtworkName_402",
    100
  },
  _403 = {
    "Artwork_ArtworkName_403",
    100
  },
  _404 = {
    "Artwork_ArtworkName_404",
    100
  },
  _405 = {
    "Artwork_ArtworkName_405",
    100
  },
  _406 = {
    "Artwork_ArtworkName_406",
    100
  }
}
Artwork.ArtworksByChapter = {
  {
    Name = "1._Prologue",
    38
  },
  {
    Name = "2._Labyrinth_1",
    50
  },
  {
    Name = "3._Labyrinth_2",
    13
  },
  {
    Name = "4._Mountain_Fortress",
    14
  },
  {
    Name = "5._Isolated_Village",
    52
  },
  {
    Name = "6._Vampire_Castle_1",
    36
  },
  {
    Name = "7._Vampire_Castle_2",
    14
  },
  {
    Name = "8._Vampire_Castle_3",
    20
  },
  {
    Name = "9._Babayaga_Cottage",
    20
  },
  {
    Name = "10._Necromancer_Abyss_1",
    18
  },
  {
    Name = "11._Necromancer_Abyss_2",
    15
  },
  {
    Name = "12._Necromancer_Abyss_3",
    3
  },
  {Name = "epilogue", 17},
  {Name = "13._DLC_1", 21},
  {
    Name = "Caricaturas!",
    61
  },
  {Name = "14._DLC_2", 14}
}
Artwork.ArtworksByLevel = {
  {
    Name = "1_1_besieged_village",
    8
  },
  {
    Name = "1_4_haunting_path",
    8
  },
  {Name = "1_5_swamp", 8},
  {
    Name = "1_7_pans_temple",
    6
  },
  {
    Name = "1_9_oblivion_lake",
    8
  },
  {
    Name = "2_2_enchanted_forest",
    6
  },
  {
    Name = "2_3_underground_cave",
    7
  },
  {
    Name = "2_4_labyrinth_entrance",
    9
  },
  {
    Name = "2_6_underground_dungeons",
    4
  },
  {
    Name = "2_7_labyrinth_ruins_ii",
    9
  },
  {
    Name = "2_8_dark_dungeon",
    5
  },
  {
    Name = "2_8_stone_idol_mausoleum",
    5
  },
  {
    Name = "2_9_stone_idol_temple",
    3
  },
  {
    Name = "2_10_black_knight",
    2
  },
  {
    Name = "3_0_the_gauntlet",
    9
  },
  {
    Name = "3_3_the_dark_lord",
    4
  },
  {
    Name = "4_1_fortress",
    5
  },
  {
    Name = "4_2_fortress_witch",
    9
  },
  {
    Name = "5_1_dark_forest",
    5
  },
  {
    Name = "5_2_isolated_village",
    10
  },
  {
    Name = "5_4_abbey_catacombs",
    9
  },
  {
    Name = "5_4_abbey_catacombs_a",
    11
  },
  {
    Name = "5_8_abbey_tower",
    7
  },
  {
    Name = "5_2_isolated_village_a",
    4
  },
  {
    Name = "5_11_sewers",
    6
  },
  {
    Name = "6_1_courtyard",
    8
  },
  {
    Name = "6_1_courtyard_a",
    9
  },
  {
    Name = "6_3_castle_hall",
    10
  },
  {
    Name = "6_5_refectory",
    9
  },
  {
    Name = "7_1_balcony",
    4
  },
  {
    Name = "7_3_chromatic_observatory",
    7
  },
  {
    Name = "7_3_chromatic_observatory_a",
    3
  },
  {
    Name = "8_1_tower_base",
    4
  },
  {
    Name = "8_2_the_tower",
    4
  },
  {
    Name = "8_3_top_corridor",
    3
  },
  {
    Name = "8_4_the_throne_room",
    9
  },
  {
    Name = "9_1_bones_forest",
    14
  },
  {
    Name = "9_3_woes_moor",
    4
  },
  {
    Name = "9_4_1_the_music_box",
    2
  },
  {
    Name = "10_1_marsh_of_silence",
    4
  },
  {
    Name = "10_2_misty_moor",
    2
  },
  {
    Name = "10_3_cementery",
    6
  },
  {
    Name = "10_5_crematory_oven",
    6
  },
  {
    Name = "11_0_the_necromancer_abyss",
    10
  },
  {
    Name = "11_8_dracolich",
    5
  },
  {
    Name = "12_3_final_fight",
    3
  },
  {Name = "epilogue", 17},
  {
    Name = "dlc_1_1_castle_hall",
    7
  },
  {
    Name = "dlc_1_2_dungeon",
    7
  },
  {
    Name = "dlc_1_3_towermech",
    7
  },
  {
    Name = "caricatures",
    61
  },
  {
    Name = "dlc_2_1_otherworld",
    7
  },
  {
    Name = "dlc_2_2_otherworld",
    7
  }
}
Artwork.FreeArtworksByLevel = {
  Level_1_1_besieged_village = 1,
  Level_1_4_haunting_path = 1,
  Level_1_5_swamp = 1,
  Level_1_7_pans_temple = 1,
  Level_1_9_oblivion_lake = 1,
  Level_2_2_enchanted_forest = 1,
  Level_2_3_underground_cave = 1,
  Level_2_4_labyrinth_entrance = 1,
  Level_2_6_underground_dungeons = 1,
  Level_2_7_labyrinth_ruins_ii = 1,
  Level_2_8_dark_dungeon = 1,
  Level_2_8_stone_idol_mausoleum = 1,
  Level_2_9_stone_idol_temple = 1,
  Level_2_10_black_knight = 1,
  Level_3_0_the_gauntlet = 1,
  Level_3_3_the_dark_lord = 1,
  Level_4_1_fortress = 1,
  Level_4_2_fortress_witch = 1,
  Level_5_1_dark_forest = 1,
  Level_5_2_isolated_village = 1,
  Level_5_4_abbey_catacombs = 1,
  Level_5_4_abbey_catacombs_a = 1,
  Level_5_8_abbey_tower = 1,
  Level_5_2_isolated_village_a = 1,
  Level_5_11_sewers = 1,
  Level_6_1_courtyard = 1,
  Level_6_1_courtyard_a = 1,
  Level_6_3_castle_hall = 1,
  Level_6_5_refectory = 1,
  Level_7_1_balcony = 1,
  Level_7_3_chromatic_observatory = 1,
  Level_7_3_chromatic_observatory_a = 1,
  Level_8_1_tower_base = 1,
  Level_8_2_the_tower = 1,
  Level_8_3_top_corridor = 1,
  Level_8_4_the_throne_room = 1,
  Level_9_1_bones_forest = 1,
  Level_9_3_woes_moor = 1,
  Level_9_4_1_the_music_box = 1,
  Level_10_1_marsh_of_silence = 1,
  Level_10_2_misty_moor = 1,
  Level_10_3_cementery = 1,
  Level_10_5_crematory_oven = 1,
  Level_11_0_the_necromancer_abyss = 1,
  Level_11_8_dracolich = 1,
  Level_12_3_final_fight = 1,
  Level_epilogue = 1,
  Level_dlc_1_1_castle_hall = 1,
  Level_dlc_1_2_dungeon = 1,
  Level_dlc_1_3_towermech = 1,
  Level_dlc_2_1_otherworld = 1,
  Level_dlc_2_2_otherworld = 1
}
for i = 1, #Artwork.ArtworksByChapter do
  local a = Artwork.ArtworksByChapter[i]
  Artwork.ArtworksByChapter[a.Name] = Artwork.ArtworksByChapter[i]
end
for i = 1, #Artwork.ArtworksByLevel do
  local a = Artwork.ArtworksByLevel[i]
  Artwork.ArtworksByLevel[a.Name] = Artwork.ArtworksByLevel[i]
end

function Artwork.Preload()
end

function Artwork.main()
end

function Artwork.Clean()
  Artwork.LastSelectedLine = ""
  Artwork.FirstLine = 1
end

function Artwork.ArtworkMenu()
  Menu.TurnPage()
  local prevFont = Menu.SmallFont
  Menu.SmallFont = "HoratioLittle"
  local numChapters = Artwork.GetNumAvailableArtworkChapters()
  Menu.BookMenus.Artwork = Artwork.GetBookMenuTable()
  Menu.BookMenu(langstr("Menu_Artwork"), "Artwork", {}, "Artwork.ReturnToExtras", 90 + (13 - math.min(numChapters, 11)) / 2 * 26, 26, 170)
  local createArrow = function(arrowName, position, angle)
    menuArrow = Scorer.NewItem(0, arrowName, "Sprite", 1)
    menuArrow.IsMultiSprite = 1
    menuArrow.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    local properties = {
      SpriteIndex = 4,
      Pivot = V2D(0, 0.5),
      Pos = position,
      Angle = angle,
      Scale = V2D(0.65, 0.65),
      OnRender = "TravelBook.OnRenderScrollArrow",
      uDataGlowRemainTime = 0
    }
    for property, value in pairs(properties) do
      menuArrow[property] = value
    end
  end
  createArrow("ArtworkLeftMenuUpArrow", V2D(128, 125), -90)
  createArrow("ArtworkLeftMenuDownArrow", V2D(128, 425), 90)
  local leftMenuNames = {}
  for _, leftMenuItem in ipairs(Menu.GetLeftMenuItems()) do
    table.insert(leftMenuNames, leftMenuItem.Name)
  end
  Menu.VerticalMenuScroller:Init(leftMenuNames, 11, "ArtworkLeftMenuUpArrow", "ArtworkLeftMenuDownArrow")
  Menu.SmallFont = prevFont
  Scorer.GetItem(0, langstr("Menu_Artwork") .. "_Underline1").Visible = 0
  Scorer.GetItem(0, langstr("Menu_Artwork") .. "_Underline2").Visible = 0
  Scorer.GetItem(0, langstr("Menu_Artwork") .. "_Underline3").Visible = 0
  local leftMenuItems = Menu.GetLeftMenuItems()
  for i = 1, numChapters do
    leftMenuItems[i].uData.ChapterIndex = i
    leftMenuItems[i].OnAccept = "Artwork.GoToRightPage"
    leftMenuItems[i].OnRight = "Artwork.GoToRightPage"
    leftMenuItems[i].OnGainFocus = "Artwork.ShowRightMenu"
  end
  if 16 <= numChapters then
    leftMenuItems[15].uData.ChapterIndex = 16
    leftMenuItems[16].uData.ChapterIndex = 15
  end
  Artwork.ShowRightMenu(0, "Itm1L")
  Scorer.SetDefault(0, "Itm1L")
  Menu.IsComingBack = true
end

function Artwork.ReturnToExtras()
  Artwork.Reset()
  WorldMap.BackToExtras()
end

function Artwork.GetNumAvailableArtworkChapters()
  local numChapters = 0
  local artworksSum = 0
  local numDLCGivingArtwork = 0
  local unlockedArtworks, numDLCGivingArtwork = Artwork.RecalculateUnlockedArtwork()
  if numDLCGivingArtwork == 2 then
    for i = 1, #Artwork.ArtworksByChapter do
      numChapters = numChapters + 1
    end
  elseif numDLCGivingArtwork == 1 then
    for i = 1, #Artwork.ArtworksByChapter do
      numChapters = numChapters + 1
    end
    if Artwork.AreAllDLC1LevelsPassed() then
      numChapters = numChapters - 1
    else
      numChapters = numChapters - 2
    end
  else
    for i = 1, #Artwork.ArtworksByChapter do
      numChapters = numChapters + 1
      artworksSum = artworksSum + Artwork.ArtworksByChapter[i][1]
      if unlockedArtworks <= artworksSum then
        break
      end
    end
  end
  return numChapters
end

function Artwork.GetBookMenuTable()
  local ret = {}
  local numDLCGivingArtwork = 0
  local unlockedArtworks, numDLCGivingArtwork = Artwork.RecalculateUnlockedArtwork()
  if numDLCGivingArtwork == 2 then
    for i = 1, #Artwork.ArtworksByChapter do
      local text = langstr("Artwork_ChapterArtwork_" .. i)
      table.insert(ret, text)
    end
  else
    local artworksSum = 0
    for i = 1, #Artwork.ArtworksByChapter do
      local artworksInChapter = Artwork.ArtworksByChapter[i][1]
      local text = langstr("Artwork_ChapterArtwork_" .. i)
      table.insert(ret, text)
      artworksSum = artworksSum + artworksInChapter
      if unlockedArtworks <= artworksSum then
        break
      end
    end
  end
  return ret
end

function Artwork.PrevShowArtwork(id, controlName)
  Input.SetActionSet("Null")
  Artwork.ArtworkControlName = controlName
  Game.Set("AfterDrawCallback", "Artwork.ShowArtwork")
  Scorer.AddScheduledFunc(0, 0.2, "", "Artwork.RestoreActionSet")
end

function Artwork.RestoreActionSet()
  Input.SetActionSet("Menu")
end

function Artwork.ShowArtwork()
  local controlName = Artwork.ArtworkControlName
  local control = Scorer.GetItem(0, controlName)
  if not control.uData.IsAvailable and Game.Get("gvExperience") < Artwork.PricesTable[controlName][2] then
    return
  end
  local leftMenuItem = Menu.GetLeftMenuItems()[2]
  if leftMenuItem then
    Artwork.Timer = 0
    Artwork.FadeTimer = 1
  end
  Artwork.ScheduleIconsFadeOut()
  if not control.uData.IsAvailable then
    Game.Set("gvExperience", Game.Get("gvExperience") - Artwork.PricesTable[controlName][2])
    local buyedArtwork = Game.Get("gvBuyedArtwork")
    local buyedDLCArtwork = Artwork.GetDLCString()
    if buyedArtwork ~= "" then
      buyedArtwork = buyedArtwork .. ","
    end
    if buyedDLCArtwork ~= "" then
      buyedDLCArtwork = buyedDLCArtwork .. ","
    end
    local test = Game.Get("UnblockedPictures")
    if Artwork.DetectDLCArtwork(controlName) == true then
      Artwork.InsertDLCString(buyedDLCArtwork .. controlName)
    else
      Game.Set("gvBuyedArtwork", buyedArtwork .. controlName)
    end
    control.Text = langstr(Artwork.PricesTable[controlName][1])
    control.Size = V2D(Scorer.GetTextArea("HoratioLittle", control.Text), control.Size.y)
    if Artwork.CheckIfAllArtworkIsBought() then
      Game.WriteAchievement(SaveGame.allArtworkBoughtIndex)
      print("ALL ARTWORK BOUGHT ACHIEVEMENT UNLOCKED\n")
    end
  end
  control.uData.IsAvailable = true
  TravelBook.ScrollList:Update()
  TravelBook.GetItem("AvailablePointsFrameText").Text = tostring(Game.Get("gvExperience"))
  TravelBook.AppendCurrencyIconToText(TravelBook.GetItem("AvailablePointsFrameText"), "AvailablePointsFrameCurrencyIcon", TravelBook.Fonts.AvailablePointsFrame, V2D(16, 2))
  Menu.ShowNavigationHUD("Menu_Nav_Back")
  Scorer.GetItem(0, "MenuNavigationHUD_Back").Effect = "Shadow"
  local logoC = Scorer.NewItem(0, "MercuryLogo", "Sprite")
  if logoC == nil then
    logoC = Scorer.GetItem(0, "MercuryLogo")
  else
    logoC.IsMultiSprite = 1
    logoC.HighRes = 1
    logoC.File = "2D/HUD/dds/HUD2.alpha.dds"
    logoC.SpriteIndex = 28
    logoC.Pos = V2D(270, 218) + V2D(128, 96) * Game.Get("PhysicalAspectRatio")
    logoC.Scale = V2D(1.33333)
    logoC.OutSide = 1
    logoC.FadeIn = Artwork.TimeToFade
  end
  logoC.Visible = 1
  Game.Set("VideoRender", 1)
  Artwork.IsShowingArtwork = true
  Artwork.UpdateHUD()
  if Artwork.VideoItem == nil then
    Artwork.VideoItem = Scene.CreateVideoScorerItem()
    local blackSquare = Scorer.NewItem(0, "BackBlackSquare", "Sprite")
    if blackSquare == nil then
      blackSquare = Scorer.GetItem(0, "BackBlackSquare")
    else
      blackSquare.File = "2D/White.alpha.tga"
      blackSquare.Unit = 1
      blackSquare.WideScale = 0
      blackSquare.Pos = V2D(0, 0)
      blackSquare.Scale = V2D(640, 480)
      blackSquare.Size = blackSquare.Scale
      blackSquare.Pivot = V2D(0, 0)
      blackSquare.Outside = 1
      blackSquare.Color = Color(0, 0, 0, 255)
    end
    blackSquare.Visible = 1
    local numArtwork = Game.Split(controlName, "_")
    if tonumber(numArtwork[2]) > 310 and tonumber(numArtwork[2]) < 393 then
      Artwork.VideoItem.PlayFrame = "Video/DLC1/Artwork/" .. string.sub(controlName, 2) .. ".bik"
    elseif tonumber(numArtwork[2]) > 392 then
      Artwork.VideoItem.PlayFrame = "Video/DLC2/Artwork/" .. string.sub(controlName, 2) .. ".bik"
    else
      Artwork.VideoItem.PlayFrame = "Video/Artwork/" .. string.sub(controlName, 9) .. ".bik"
    end
    Artwork.VideoItem.OnRender = "Artwork.AdjustLogo"
    Menu.FreezeInput(Artwork.RestoreIcons, Artwork.BackFromArtwork)
    if #Game.Split(Game.Get("gvBuyedArtwork"), ",") + #Game.Split(Artwork.GetDLCString(), ",") == 1 then
    else
      Artwork.NextArtworkName, Artwork.NumForwardSteps = Artwork.NextArtworkAvailable()
      Artwork.PrevArtworkName, Artwork.NumBackwardSteps = Artwork.PrevArtworkAvailable()
      Artwork.MapTabNavigation()
      if not Artwork.NextArtworkName then
        Artwork.PrevArtworkName2, Artwork.NumBackwardSteps2 = Artwork.PrevArtworkAvailable(true)
      end
      if not Artwork.PrevArtworkName then
        Artwork.NextArtworkName2, Artwork.NumForwardSteps2 = Artwork.NextArtworkAvailable(true)
      end
    end
  end
  Artwork.FadeInNavigationHUD()
  if Game.Get("Platform") == "PS3" then
    Game.PS3_ScreenshotEnable()
    local title = langstr(Artwork.PricesTable[controlName][1])
    Game.PS3_ScreenshotSet(title)
  end
end

function Artwork.AdjustLogo()
  logoC = Scorer.GetItem(0, "MercuryLogo")
  if logoC then
    logoC.Pos = V2D(270, 218) + V2D(128, 96) * Game.Get("PhysicalAspectRatio")
  end
end

function Artwork.BackFromArtwork()
  Game.Set("VideoRender", 0)
  Artwork.IsShowingArtwork = false
  TravelBook.ApplyPropertyToSet("TabNavigation", "FadeOut", Artwork.TimeToFade)
  Input.Bind(0, "Menu", "Accept", "")
  Input.Bind(0, "Menu", "Cancel", "")
  Input.Bind(0, "Menu", "PgUp", "")
  Input.Bind(0, "Menu", "PgDown", "")
  Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
  Scorer.GetItem(0, "MenuNavigationHUD_Back").Effect = "None"
  local logo = Scorer.GetItem(0, "MercuryLogo")
  if logo then
    logo.DelMe = 1
  end
  local leftMenuItem = Menu.GetLeftMenuItems()[2]
  if leftMenuItem then
    leftMenuItem.OnRender = ""
  end
  Artwork.VideoItem.DelMe = 1
  Artwork.VideoItem = nil
  if Scorer.GetItem(0, "BackBlackSquare") then
    Scorer.GetItem(0, "BackBlackSquare").DelMe = 1
  end
  Scorer.DeleteScheduledFuncs(0, "FadeOutNavigationHUD")
  local si = Scorer.GetItem(0, "FuckingPaused")
  if si then
    si.Alpha = 255
    si.OnRender = ""
  end
  if Game.Get("Platform") == "PS3" then
    Game.PS3_ScreenshotDisable()
  end
end

function Artwork.RestoreIcons()
  Artwork.Timer = 0
  Artwork.FadeTimer = 1
  if not Scorer.ExistsScheduledFunc(0, "FadeOutNavigationHUD") then
    Artwork.FadeInNavigationHUD()
  end
  Artwork.ScheduleIconsFadeOut()
  Menu.FreezeInput(Artwork.RestoreIcons, Artwork.BackFromArtwork)
  Artwork.MapTabNavigation()
end

function Artwork.OnArtworkRender(scorerId, itemName, timeDiff)
  Artwork.Timer = Artwork.Timer + timeDiff
  if Artwork.Timer >= Artwork.MaxTime then
    Artwork.Timer = Artwork.MaxTime
    Artwork.FadeTimer = Artwork.FadeTimer - timeDiff
    if Artwork.FadeTimer <= 0 then
      Artwork.FadeTimer = 0
    end
    local color = V4D(255, 255, 255, 255 * Artwork.FadeTimer)
    TravelBook.ApplyPropertyToSet("TabNavigation", "Color", color)
    Scorer.GetItem(0, "MenuNavigationHUD_Back").Color = color
  end
end

function Artwork.NextArtworkAvailable(stopInLast)
  stopInLast = defparam(stopInLast, false)
  local steps = 0
  local nextArtwork
  local n = tonumber(string.sub(Artwork.ArtworkControlName, 9))
  if n == nil then
    n = tonumber(string.sub(Artwork.ArtworkControlName, 2))
  end
  local last = Artwork.NumTotalArtwork
  for i = n + 1, last do
    local candidate
    if i < Artwork.FirstDLCArtwork then
      candidate = "Artwork_" .. i
    else
      candidate = "_" .. i
    end
    local candidateItem = Scorer.GetItem(0, candidate)
    if candidateItem and candidateItem.uData and candidateItem.uData.IsAvailable then
      steps = i - n
      nextArtwork = candidate
      if not stopInLast then
        break
      end
    end
  end
  return nextArtwork, steps
end

function Artwork.PrevArtworkAvailable(stopInFirst)
  stopInFirst = defparam(stopInFirst, false)
  local steps = 0
  local prevArtwork
  local i = tonumber(string.sub(Artwork.ArtworkControlName, 9))
  if i == nil then
    i = tonumber(string.sub(Artwork.ArtworkControlName, 2))
  end
  local n = i - 1
  while 0 < n do
    local candidate
    if n < Artwork.FirstDLCArtwork then
      candidate = "Artwork_" .. n
    else
      candidate = "_" .. n
    end
    local candidateItem = Scorer.GetItem(0, candidate)
    if candidateItem and candidateItem.uData.IsAvailable then
      steps = i - n
      prevArtwork = candidate
      if not stopInFirst then
        break
      end
    end
    n = n - 1
  end
  return prevArtwork, steps
end

Artwork.BlockUpperControls = false

function Artwork.ShowNextArtwork(id, itemName, altNextArworkName, altNumForwardSteps)
  if not Artwork.BlockUpperControls then
    Artwork.BlockUpperControls = true
    Scorer.AddScheduledFunc(0, 0.1, "", "Artwork.RestoreUpperControls")
  else
    return
  end
  altNextArworkName = defparam(altNextArworkName, nil)
  altNumForwardSteps = defparam(altNumForwardSteps, nil)
  if altNextArworkName then
    Artwork.ArtworkControlName = altNextArworkName
  else
    Artwork.ArtworkControlName = Artwork.NextArtworkName
  end
  local prevFocusSoundVol = Game.Get("OnFocusSoundVol")
  local numForwardSteps = Artwork.NumForwardSteps
  if altNumForwardSteps then
    numForwardSteps = altNumForwardSteps
  end
  if 1 < numForwardSteps then
    Game.Set("OnFocusSoundVol", 0)
  end
  for i = 1, numForwardSteps do
    if i == numForwardSteps then
      Scorer.AddScheduledFunc(0, 0, "", "Artwork.ShowNextArtwork_SF", prevFocusSoundVol)
    else
      TravelBook.ScrollList:SelectNext()
    end
  end
end

function Artwork.ShowNextArtwork_SF(prevFocusSoundVol)
  Game.Set("OnFocusSoundVol", prevFocusSoundVol)
  TravelBook.ScrollList:SelectNext()
  TravelBook.ScrollList:Update()
  Game.Set("VideoRender", 0)
  Artwork.VideoItem.DelMe = 1
  Artwork.VideoItem = nil
  if Scorer.GetItem(0, "BackBlackSquare") then
    Scorer.GetItem(0, "BackBlackSquare").DelMe = 1
  end
  Artwork.ShowArtwork()
end

function Artwork.ShowNextArtwork2()
  Artwork.ShowNextArtwork(0, "", Artwork.NextArtworkName2, Artwork.NumForwardSteps2)
end

function Artwork.ShowPrevArtwork(id, itemName, altPrevArworkName, altNumBackwardSteps)
  if not Artwork.BlockUpperControls then
    Artwork.BlockUpperControls = true
    Scorer.AddScheduledFunc(0, 0.1, "", "Artwork.RestoreUpperControls")
  else
    return
  end
  altPrevArworkName = defparam(altPrevArworkName, nil)
  altNumBackwardSteps = defparam(altNumBackwardSteps, nil)
  if altPrevArworkName then
    Artwork.ArtworkControlName = altPrevArworkName
  else
    Artwork.ArtworkControlName = Artwork.PrevArtworkName
  end
  local prevFocusSoundVol = Game.Get("OnFocusSoundVol")
  local numBackwardSteps = Artwork.NumBackwardSteps
  if altNumBackwardSteps then
    numBackwardSteps = altNumBackwardSteps
  end
  if 1 < numBackwardSteps then
    Game.Set("OnFocusSoundVol", 0)
  end
  for i = 1, numBackwardSteps do
    if i == numBackwardSteps then
      Scorer.AddScheduledFunc(0, 0, "", "Artwork.ShowPrevArtwork_SF", prevFocusSoundVol)
    else
      TravelBook.ScrollList:SelectPrevious()
    end
  end
end

function Artwork.ShowPrevArtwork_SF(prevFocusSoundVol)
  Game.Set("OnFocusSoundVol", prevFocusSoundVol)
  TravelBook.ScrollList:SelectPrevious()
  TravelBook.ScrollList:Update()
  Game.Set("VideoRender", 0)
  Artwork.VideoItem.DelMe = 1
  Artwork.VideoItem = nil
  if Scorer.GetItem(0, "BackBlackSquare") then
    Scorer.GetItem(0, "BackBlackSquare").DelMe = 1
  end
  Artwork.ShowArtwork()
end

function Artwork.ShowPrevArtwork2()
  Artwork.ShowPrevArtwork(0, "", Artwork.PrevArtworkName2, Artwork.NumBackwardSteps2)
end

function Artwork.RestoreUpperControls()
  Artwork.BlockUpperControls = false
end

function Artwork.CheckLastSelectedLineFunc(line)
  return line.Name == Artwork.LastSelectedLine
end

function Artwork.InvalidateRightPage()
  Scorer.GetItem(0, TravelBook.LeftMenuSelection).OnAccept = ""
  Scorer.GetItem(0, TravelBook.LeftMenuSelection).OnRight = ""
  Artwork.HideRightMenu()
end

function Artwork.AreAllDLC1LevelsPassed()
  local allPassed = true
  for j = 1, #SaveGame.GameChapters[13] do
    if Artwork.isLevelPassed(SaveGame.GameChapters[13][j]) == false then
      allPassed = false
    end
  end
  return allPassed
end

function Artwork.GetArtworksByChapter(chapterIndex)
  local artworksByChapter = 0
  local dlc1Installed, dlc2Installed = SaveGame.IsDLCAvailable()
  if chapterIndex <= 12 then
    for j = 1, #SaveGame.GameChapters[chapterIndex] do
      if Artwork.isLevelPassed(SaveGame.GameChapters[chapterIndex][j]) then
        artworksByChapter = artworksByChapter + Artwork.ArtworksByLevel[SaveGame.GameChapters[chapterIndex][j]][1]
      end
    end
  else
    if chapterIndex == 13 and Artwork.isLevelPassed(SaveGame.GameChapters[12][1]) then
      artworksByChapter = artworksByChapter + Artwork.ArtworksByLevel.epilogue[1]
    end
    if chapterIndex == 14 then
      for j = 1, #SaveGame.GameChapters[13] do
        if Artwork.isLevelPassed(SaveGame.GameChapters[13][j]) then
          artworksByChapter = artworksByChapter + Artwork.ArtworksByLevel[SaveGame.GameChapters[13][j]][1]
        end
      end
    end
    if chapterIndex == 15 then
      local allPassed = Artwork.AreAllDLC1LevelsPassed()
      if allPassed then
        artworksByChapter = artworksByChapter + Artwork.ArtworksByLevel.caricatures[1]
      end
    end
    if chapterIndex == 16 then
      for j = 1, #SaveGame.GameChapters[14] do
        if Artwork.isLevelPassed(SaveGame.GameChapters[14][j]) then
          artworksByChapter = artworksByChapter + Artwork.ArtworksByLevel[SaveGame.GameChapters[14][j]][1]
        end
      end
    end
  end
  return artworksByChapter
end

function Artwork.ShowRightMenu(scorerId, itemName, previousItemName)
  Menu.ShowRightMenu(scorerId, itemName, previousItemName)
  Scorer.GetItem(0, itemName).OnLooseFocus = "Artwork.HideRightMenu"
  local chapterIndex = Scorer.GetItem(0, itemName).uData.ChapterIndex
  TravelBook.LeftMenuSelection = itemName
  TravelBook.MarkMenuSelection("Left")
  local leftArrow = TravelBook.GetItem("LeftMenuArrowLeft")
  local rightArrow = TravelBook.GetItem("LeftMenuArrowRight")
  leftArrow.Pos = leftArrow.Pos - V2D(0, 8)
  rightArrow.Pos = rightArrow.Pos - V2D(0, 9)
  TravelBook.ScrollList:Delete()
  TravelBook.ScrollList:SetUpForTab(1)
  TravelBook.ScrollList.nDisplayedLines = 7
  TravelBook.GetItem("ScrollListLineShadow")
  TravelBook.CreateItemSet("ActionsRightMenu")
  TravelBook.CreateItemSet("TabNavigation")
  Scorer.GetItem(0, "LButtonText").Text = langstr("Menu_PrevImage")
  Scorer.GetItem(0, "RButtonText").Text = langstr("Menu_NextImage")
  Scorer.GetItem(0, "MainLButtonIcon").uData.InitPos = Scorer.GetItem(0, "MainLButtonIcon").Pos
  Scorer.GetItem(0, "MainRButtonIcon").uData.InitPos = Scorer.GetItem(0, "MainRButtonIcon").Pos
  TravelBook.UpdateKeys(Scorer.GetItem(0, "LButtonText"), false)
  TravelBook.UpdateKeys(Scorer.GetItem(0, "RButtonText"), true)
  TravelBook.GetItem("AvailablePointsFrameText").Text = tostring(Game.Get("gvExperience"))
  TravelBook.AppendCurrencyIconToText(TravelBook.GetItem("AvailablePointsFrameText"), "AvailablePointsFrameCurrencyIcon", TravelBook.Fonts.AvailablePointsFrame, V2D(16, 2))
  local dlc1Installed = true
  local dlc2Installed = true
  if chapterIndex == 14 and (dlc1Installed == false or Artwork.isLevelPassed(SaveGame.GameChapters[13][1]) == false) then
    Artwork.InvalidateRightPage()
    return
  end
  if chapterIndex == 15 then
    local allPassed = Artwork.AreAllDLC1LevelsPassed()
    if dlc1Installed == false or allPassed == false then
      Artwork.InvalidateRightPage()
      return
    end
  end
  local buyedArtworkTable = {}
  local buyedArtworkList = Game.Split(Game.Get("gvBuyedArtwork"), ",")
  for p = 1, #buyedArtworkList do
    buyedArtworkTable[buyedArtworkList[p]] = {}
  end
  local tam = #buyedArtworkList
  if #Artwork.GetDLCString() ~= 0 then
    buyedArtworkList = Game.Split(Artwork.GetDLCString(), ",")
    for p = 1, #buyedArtworkList do
      buyedArtworkTable[buyedArtworkList[p]] = {}
    end
  end
  local unlockedArtworks = Artwork.RecalculateUnlockedArtwork()
  local firstArtworkIndex = 1
  for i = 1, chapterIndex - 1 do
    if 12 < i then
      if i == 13 and Artwork.isLevelPassed(SaveGame.GameChapters[12][1]) then
        firstArtworkIndex = firstArtworkIndex + Artwork.ArtworksByLevel.epilogue[1]
      end
      if i == 14 and (dlc1Installed or chapterIndex == 16) then
        for j = 1, #SaveGame.GameChapters[13] do
          if Artwork.isLevelPassed(SaveGame.GameChapters[13][j]) or chapterIndex == 16 then
            firstArtworkIndex = firstArtworkIndex + Artwork.ArtworksByLevel[SaveGame.GameChapters[13][j]][1]
          end
        end
      end
      if i == 15 and (dlc1Installed or chapterIndex == 16) then
        local allPassed = Artwork.AreAllDLC1LevelsPassed()
        if allPassed or chapterIndex == 16 then
          firstArtworkIndex = firstArtworkIndex + Artwork.ArtworksByLevel.caricatures[1]
        end
      end
    else
      for j = 1, #SaveGame.GameChapters[i] do
        if Artwork.isLevelPassed(SaveGame.GameChapters[i][j]) then
          firstArtworkIndex = firstArtworkIndex + Artwork.ArtworksByLevel[SaveGame.GameChapters[i][j]][1]
        end
      end
    end
  end
  local artworksInChapter = Artwork.GetArtworksByChapter(chapterIndex) - 1
  local lastArtworkIndex = firstArtworkIndex + artworksInChapter
  for j = firstArtworkIndex, lastArtworkIndex do
    local index
    if j < Artwork.FirstDLCArtwork then
      index = "Artwork_" .. j
    else
      index = "_" .. j
    end
    local available = buyedArtworkTable[index] ~= nil
    local name = Menu.InterrogationsText
    if available then
      name = langstr(Artwork.PricesTable[index][1])
    end
    local line = TravelBook.ScrollList:NewLine(index, name)
    line.OnAccept = "Artwork.PrevShowArtwork"
    line.onLeft = "Artwork.GoToLeftPage"
    line.OnGainFocus = ""
    line.uData.IsArtworkLine = true
    if available then
      line.uData.IsAvailable = true
    else
      line.uData.IsArtworkBuyable = true
    end
  end
  TravelBook.ScrollList.SelectedLine = 1
  TravelBook.ScrollList:SetSelectedLineIf(Artwork.CheckLastSelectedLineFunc)
  TravelBook.ScrollList.FirstLine = Artwork.FirstLine
  local line = TravelBook.ScrollList.List[TravelBook.ScrollList.SelectedLine]
  if line then
    line.Size = V2D(Scorer.GetTextArea("HoratioLittle", line.Text), line.Size.y)
  end
  TravelBook.ScrollList:Update(true)
  TravelBook.MarkMenuSelection("Right")
  TravelBook.ScrollList:Enable(false)
end

function Artwork.BuyFreeArtwork(levelName, firstArtworkIndex)
  local freeArtworks = Artwork.FreeArtworksByLevel["Level_" .. levelName]
  for i = 1, freeArtworks do
    local buyedArtwork = Game.Get("gvBuyedArtwork")
    if buyedArtwork ~= "" then
      buyedArtwork = buyedArtwork .. ","
    end
    local buyedDLCArtwork = Artwork.GetDLCString()
    if buyedDLCArtwork ~= "" then
      buyedDLCArtwork = buyedDLCArtwork .. ","
    end
    local name
    if firstArtworkIndex + i - 1 < Artwork.FirstDLCArtwork then
      name = "Artwork_" .. firstArtworkIndex + i - 1
      Game.Set("gvBuyedArtwork", buyedArtwork .. name)
    else
      name = "_" .. firstArtworkIndex + i - 1
      Artwork.InsertDLCString(buyedDLCArtwork .. name)
    end
  end
end

function Artwork.GoToLeftPage()
  Artwork.FirstLine = TravelBook.ScrollList.FirstLine
  if TravelBook.ScrollList and TravelBook.ScrollList.SelectedLine then
    Artwork.LastSelectedLine = TravelBook.ScrollList.List[TravelBook.ScrollList.SelectedLine].Name
    TravelBook.ClearMenuSelection("Right")
  end
  Menu.GoToLeftPage()
end

function Artwork.HideRightMenu(scorerId, itemName, previousItemName)
  Artwork.Clean()
  TravelBook.ScrollList:Delete()
  TravelBook.ClearMenuSelection("Right")
  TravelBook.ApplyPropertyToSet("ActionsRightMenu", "DelMe", 1)
  TravelBook.ApplyPropertyToSet("TabNavigation", "DelMe", 1)
end

function Artwork.GoToRightPage()
  Menu.GoToRightPage()
  Scorer.SetOnCancel(0, "Artwork.GoToLeftPage")
  TravelBook.ScrollList:Enable(true)
  TravelBook.ScrollList:SetSelectedLineIf(Artwork.CheckLastSelectedLineFunc)
  TravelBook.ScrollList.FirstLine = Artwork.FirstLine
  TravelBook.ScrollList:Update()
  Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
end

function Artwork.MarkPrice(itemName)
  local item = Scorer.GetItem(0, itemName)
  if item then
    if nil == TravelBook.ActionStatusItems then
      TravelBook.ActionStatusItems = {}
    end
    local info = Artwork.PricesTable[itemName]
    local iconIndex = #TravelBook.ActionStatusItems + 1
    local priceText = Scorer.NewItem(0, "StatusIcon" .. iconIndex, "Text", 1)
    priceText.Text = tostring(info[2])
    priceText.Align = "Right"
    priceText.Font = TravelBook.Fonts.MenuRight
    if Game.Get("gvExperience") >= info[2] then
      priceText.Color = TravelBook.ActionPriceAffordableColor
    else
      priceText.Color = TravelBook.ActionPriceUnaffordableColor
    end
    priceText.Pos = V2D(645, item.y)
    table.insert(TravelBook.ActionStatusItems, priceText.Name)
    local currencyIconName = "StatusIcon" .. tostring(iconIndex + 1)
    TravelBook.AppendCurrencyIconToText(priceText, currencyIconName, TravelBook.Fonts.MenuRight, V2D(2, 1))
    table.insert(TravelBook.ActionStatusItems, currencyIconName)
  end
end

function Artwork.FadeOutGamePausedMessage(scorerId, itemName, timeDiff)
  local color = Scorer.GetItem(0, itemName).Color
  local alpha = color.w - 255 * timeDiff / Artwork.TimeToFade
  if alpha < 0 then
    alpha = 0
  end
  Scorer.GetItem(0, itemName).Color = V4D(color.x, color.y, color.z, alpha)
end

function Artwork.FadeOutNavigationHUD()
  Menu.FadeOutNavigationHUD()
  TravelBook.ApplyPropertyToSet("TabNavigation", "FadeOut", Artwork.TimeToFade)
  local si = Scorer.GetItem(0, "FuckingPaused")
  if si then
    si.OnRender = "Artwork.FadeOutGamePausedMessage"
  end
end

function Artwork.FadeInNavigationHUD()
  local fadeInAllowed = Scorer.GetItem(0, "MainRButtonIcon").FadeFactor < 1
  if fadeInAllowed then
    Menu.FadeInNavigationHUD()
    TravelBook.ApplyPropertyToSet("TabNavigation", "FadeIn", Artwork.TimeToFade)
  end
  local si = Scorer.GetItem(0, "FuckingPaused")
  if si then
    si.Alpha = 255
    si.OnRender = ""
  end
end

function Artwork.UpdateHUD()
  if Game.Get("Platform") ~= "PC" then
    return
  end
  TravelBook.UpdateKeys(Scorer.GetItem(0, "LButtonText"), false)
  TravelBook.UpdateKeys(Scorer.GetItem(0, "RButtonText"), true)
  if Game.Get("PCPadConnected") == 1 then
    Scorer.GetItem(0, "MainLButtonIcon").Pos = Scorer.GetItem(0, "MainLButtonIcon").uData.InitPos
    Scorer.GetItem(0, "MainRButtonIcon").Pos = Scorer.GetItem(0, "MainRButtonIcon").uData.InitPos
  else
    Scorer.GetItem(0, "MainLButtonIcon").Pos = V2D(-100, -100)
    Scorer.GetItem(0, "MainRButtonIcon").Pos = V2D(-100, -100)
  end
end

function Artwork.ScheduleIconsFadeOut()
  Scorer.DeleteScheduledFuncs(0, "FadeOutNavigationHUD")
  Scorer.AddScheduledFunc(0, Artwork.MaxTime, "FadeOutNavigationHUD", "Artwork.FadeOutNavigationHUD")
end

function Artwork.MapTabNavigation()
  if Artwork.NextArtworkName then
    Input.Bind(0, "Menu", "PgUp", "Artwork.ShowNextArtwork")
  else
    Input.Bind(0, "Menu", "PgUp", "Artwork.ShowPrevArtwork2")
  end
  if Artwork.PrevArtworkName then
    Input.Bind(0, "Menu", "PgDown", "Artwork.ShowPrevArtwork")
  else
    Input.Bind(0, "Menu", "PgDown", "Artwork.ShowNextArtwork2")
  end
end

function Artwork.CheckIfAllArtworkIsBought()
  local buyedArtworkList = Game.Split(Game.Get("gvBuyedArtwork"), ",")
  local buyedDLCArtworkList = Game.Split(Artwork.GetDLCString(), ",")
  for i = 1, #buyedDLCArtworkList do
    table.insert(buyedArtworkList, buyedDLCArtworkList[i])
  end
  local tmpBoughtList = {}
  local totalBought = 0
  for i = 1, #buyedArtworkList do
    local strIdx = string.find(buyedArtworkList[i], "_")
    if strIdx then
      local index = tonumber(string.sub(buyedArtworkList[i], strIdx + 1))
      if index and 1 <= index and index <= Artwork.NumTotalArtwork and not tmpBoughtList[index] then
        tmpBoughtList[index] = true
        totalBought = totalBought + 1
      end
    end
  end
  if totalBought >= Artwork.NumTotalArtwork then
    return true
  else
    return false
  end
end

function Artwork.BuyAllArtwork()
  local numArtwork = Artwork.NumTotalArtwork
  Game.Set("gvUnlockedArtwork", numArtwork)
  Game.Set("gvBuyedArtwork", "")
  for i = 1, numArtwork do
    if i < numArtwork then
      if i < Artwork.FirstDLCArtwork then
        Game.Set("gvBuyedArtwork", Game.Get("gvBuyedArtwork") .. "Artwork_" .. i .. ",")
      else
        Game.Set("gvBuyedArtwork", Game.Get("gvBuyedArtwork") .. "_" .. i .. ",")
      end
    else
      Game.Set("gvBuyedArtwork", Game.Get("gvBuyedArtwork") .. "_" .. i)
    end
  end
  if Artwork.CheckIfAllArtworkIsBought() then
    Game.WriteAchievement(SaveGame.allArtworkBoughtIndex)
    print("ALL ARTWORK BOUGHT ACHIEVEMENT UNLOCKED\n")
  end
end

function Artwork.UnlockAllCaricatures()
end

function Artwork.BuyAllCaricatures()
  local numFirstCaricature = 332
  local numLastCaricature = Artwork.NumTotalArtwork
  Game.Set("gvUnlockedArtwork", numLastCaricature)
  for i = numFirstCaricature, numLastCaricature do
    if i == numFirstCaricature then
      Game.Set("gvBuyedArtwork", Game.Get("gvBuyedArtwork") .. ",_" .. i .. ",")
    elseif i < numLastCaricature then
      Game.Set("gvBuyedArtwork", Game.Get("gvBuyedArtwork") .. "_" .. i .. ",")
    else
      Game.Set("gvBuyedArtwork", Game.Get("gvBuyedArtwork") .. "_" .. i)
    end
  end
end

function Artwork.UnlockAndGiveFreeArtwork(giveDLC)
  for i = 1, #SaveGame.GameMaps do
    if SaveGame.CheckIfMapIsDLC(SaveGame.GameMaps[i]) == false or giveDLC then
      local prevUnlockedArtwork = Artwork.RecalculateUnlockedArtwork()
      local levelArtworkData = Artwork.ArtworksByLevel[SaveGame.GameMaps[i]]
      if levelArtworkData then
        Game.Set("gvUnlockedArtwork", prevUnlockedArtwork + levelArtworkData[1])
        Artwork.BuyFreeArtwork(SaveGame.GameMaps[i], prevUnlockedArtwork + 1)
      end
      if SaveGame.GameMaps[i] == "12_3_final_fight" then
        prevUnlockedArtwork = Artwork.RecalculateUnlockedArtwork()
        Game.Set("gvUnlockedArtwork", prevUnlockedArtwork + Artwork.ArtworksByChapter.epilogue[1])
        Artwork.BuyFreeArtwork("epilogue", prevUnlockedArtwork + 1)
      end
    end
  end
end

function Artwork.DetectDLCArtwork(Name)
  local str = string.sub(Name, 1, 1)
  if str == "_" then
    print("El Artwook pertenece al DLC\n")
    return true
  else
    print("El Artwook pertenece al Juego\n")
    return false
  end
end

function Artwork.InsertDLCString(strDLC)
  local str = Game.Get("UnblockedPictures")
  local tam = #Game.Get("UnblockedPictures")
  local index = string.find(Game.Get("UnblockedPictures"), "#@#")
  local totalfingers = WorldMap.GetTotalFingers()
  local begin = string.sub(str, 1, totalfingers)
  local final = ""
  if index ~= nil then
    final = string.sub(str, index, tam)
  end
  Game.Set("UnblockedPictures", begin .. strDLC .. final)
end

function Artwork.GetDLCString()
  local str = Game.Get("UnblockedPictures")
  local tam = #Game.Get("UnblockedPictures")
  local totalfingers = WorldMap.GetTotalFingers()
  local index = string.find(Game.Get("UnblockedPictures"), "#@#")
  local DLCString = ""
  if index ~= nil then
    DLCString = string.sub(str, totalfingers + 1, index - 1)
  else
    DLCString = string.sub(str, totalfingers + 1, tam)
  end
  return DLCString
end

function Artwork.RecalculateUnlockedArtwork()
  local numDLCGivingArtwork = 0
  if WorldMap ~= nil then
    local dlc1Installed = true
    local dlc2Installed = true
    local isDLC = true
    if isDLC then
      local realNumUnlockedArtwork = 0
      for i = 1, #SaveGame.GameMaps do
        if SaveGame.CheckIfMapIsDLC(SaveGame.GameMaps[i]) == true then
          local numDLC = Artwork.GetDLCNumberFromMap(SaveGame.GameMaps[i])
          if (numDLC == 1 and dlc1Installed or numDLC == 2 and dlc2Installed) and Artwork.isLevelPassed(SaveGame.GameMaps[i]) then
            realNumUnlockedArtwork = realNumUnlockedArtwork + Artwork.ArtworksByLevel[SaveGame.GameMaps[i]][1]
            if SaveGame.GameMaps[i] == "dlc_1_3_towermech" then
              realNumUnlockedArtwork = realNumUnlockedArtwork + Artwork.ArtworksByLevel.caricatures[1]
            end
            if numDLCGivingArtwork < numDLC then
              numDLCGivingArtwork = numDLC
            end
          end
        elseif Artwork.isLevelPassed(SaveGame.GameMaps[i]) then
          realNumUnlockedArtwork = realNumUnlockedArtwork + Artwork.ArtworksByLevel[SaveGame.GameMaps[i]][1]
          if SaveGame.GameMaps[i] == "12_3_final_fight" then
            realNumUnlockedArtwork = realNumUnlockedArtwork + Artwork.ArtworksByLevel.epilogue[1]
          end
        end
      end
      return realNumUnlockedArtwork, numDLCGivingArtwork
    else
      return Game.Get("gvUnlockedArtwork"), numDLCGivingArtwork
    end
  else
    return Game.Get("gvUnlockedArtwork"), numDLCGivingArtwork
  end
end

function Artwork.GetDLCNumberFromMap(map)
  local splits = Game.Split(map, "_")
  return tonumber(splits[2])
end

function Artwork.isLevelPassed(levelName)
  local a = Game.Split(Game.Get("gvSkillMapStatus"), ",")
  for i = 1, #SaveGame.GameMaps do
    if SaveGame.GameMaps[i] == levelName then
      if a[i] == nil then
        return false
      end
      if tonumber(a[i]) > 0 then
        return true
      else
        return false
      end
    end
  end
end

function Artwork.GetArtworkFromDLC(numDLC)
  local dlcArtwork = 0
  for i = 1, #SaveGame.GameMaps do
    if SaveGame.CheckIfMapIsDLC(SaveGame.GameMaps[i]) == true then
      local mapNumDLC = Artwork.GetDLCNumberFromMap(SaveGame.GameMaps[i])
      if mapNumDLC == numDLC then
        dlcArtwork = dlcArtwork + Artwork.ArtworksByLevel[SaveGame.GameMaps[i]][1]
      end
    end
  end
  dlcArtwork = dlcArtwork + Artwork.ArtworksByLevel.caricatures[1]
  return dlcArtwork
end

function Artwork.numArtworkToUnlock(level_name)
  local artworkToUnlock = 0
  for i = 1, #SaveGame.GameMaps do
    if SaveGame.GameMaps[i] == level_name then
      return artworkToUnlock + 1
    end
    artworkToUnlock = artworkToUnlock + Artwork.ArtworksByLevel[SaveGame.GameMaps[i]][1]
    if SaveGame.GameMaps[i] == "12_3_final_fight" then
      artworkToUnlock = artworkToUnlock + Artwork.ArtworksByLevel.epilogue[1]
    end
    if SaveGame.GameMaps[i] == "dlc_1_3_towermech" then
      artworkToUnlock = artworkToUnlock + Artwork.ArtworksByLevel.caricatures[1]
    end
  end
  return artworkToUnlock + 1
end
