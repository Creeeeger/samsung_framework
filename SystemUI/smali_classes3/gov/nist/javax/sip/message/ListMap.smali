.class public final Lgov/nist/javax/sip/message/ListMap;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static headerListTable:Ljava/util/Hashtable;

.field public static initialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lgov/nist/javax/sip/message/ListMap;->initializeListMap()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeListMap()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 7
    .line 8
    const-class v1, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    .line 9
    .line 10
    const-class v2, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 16
    .line 17
    const-class v1, Lgov/nist/javax/sip/header/Contact;

    .line 18
    .line 19
    const-class v2, Lgov/nist/javax/sip/header/ContactList;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 25
    .line 26
    const-class v1, Lgov/nist/javax/sip/header/ContentEncoding;

    .line 27
    .line 28
    const-class v2, Lgov/nist/javax/sip/header/ContentEncodingList;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 34
    .line 35
    const-class v1, Lgov/nist/javax/sip/header/Via;

    .line 36
    .line 37
    const-class v2, Lgov/nist/javax/sip/header/ViaList;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 43
    .line 44
    const-class v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 45
    .line 46
    const-class v2, Lgov/nist/javax/sip/header/WWWAuthenticateList;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 52
    .line 53
    const-class v1, Lgov/nist/javax/sip/header/Accept;

    .line 54
    .line 55
    const-class v2, Lgov/nist/javax/sip/header/AcceptList;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 61
    .line 62
    const-class v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    .line 63
    .line 64
    const-class v2, Lgov/nist/javax/sip/header/AcceptEncodingList;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 70
    .line 71
    const-class v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    .line 72
    .line 73
    const-class v2, Lgov/nist/javax/sip/header/AcceptLanguageList;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 79
    .line 80
    const-class v1, Lgov/nist/javax/sip/header/ProxyRequire;

    .line 81
    .line 82
    const-class v2, Lgov/nist/javax/sip/header/ProxyRequireList;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 88
    .line 89
    const-class v1, Lgov/nist/javax/sip/header/Route;

    .line 90
    .line 91
    const-class v2, Lgov/nist/javax/sip/header/RouteList;

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 97
    .line 98
    const-class v1, Lgov/nist/javax/sip/header/Require;

    .line 99
    .line 100
    const-class v2, Lgov/nist/javax/sip/header/RequireList;

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 106
    .line 107
    const-class v1, Lgov/nist/javax/sip/header/Warning;

    .line 108
    .line 109
    const-class v2, Lgov/nist/javax/sip/header/WarningList;

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 115
    .line 116
    const-class v1, Lgov/nist/javax/sip/header/Unsupported;

    .line 117
    .line 118
    const-class v2, Lgov/nist/javax/sip/header/UnsupportedList;

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 124
    .line 125
    const-class v1, Lgov/nist/javax/sip/header/AlertInfo;

    .line 126
    .line 127
    const-class v2, Lgov/nist/javax/sip/header/AlertInfoList;

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 133
    .line 134
    const-class v1, Lgov/nist/javax/sip/header/CallInfo;

    .line 135
    .line 136
    const-class v2, Lgov/nist/javax/sip/header/CallInfoList;

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 142
    .line 143
    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 144
    .line 145
    const-class v2, Lgov/nist/javax/sip/header/ProxyAuthenticateList;

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 151
    .line 152
    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthorization;

    .line 153
    .line 154
    const-class v2, Lgov/nist/javax/sip/header/ProxyAuthorizationList;

    .line 155
    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 160
    .line 161
    const-class v1, Lgov/nist/javax/sip/header/Authorization;

    .line 162
    .line 163
    const-class v2, Lgov/nist/javax/sip/header/AuthorizationList;

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 169
    .line 170
    const-class v1, Lgov/nist/javax/sip/header/Allow;

    .line 171
    .line 172
    const-class v2, Lgov/nist/javax/sip/header/AllowList;

    .line 173
    .line 174
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 178
    .line 179
    const-class v1, Lgov/nist/javax/sip/header/RecordRoute;

    .line 180
    .line 181
    const-class v2, Lgov/nist/javax/sip/header/RecordRouteList;

    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 187
    .line 188
    const-class v1, Lgov/nist/javax/sip/header/ContentLanguage;

    .line 189
    .line 190
    const-class v2, Lgov/nist/javax/sip/header/ContentLanguageList;

    .line 191
    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 196
    .line 197
    const-class v1, Lgov/nist/javax/sip/header/ErrorInfo;

    .line 198
    .line 199
    const-class v2, Lgov/nist/javax/sip/header/ErrorInfoList;

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 205
    .line 206
    const-class v1, Lgov/nist/javax/sip/header/Supported;

    .line 207
    .line 208
    const-class v2, Lgov/nist/javax/sip/header/SupportedList;

    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 214
    .line 215
    const-class v1, Lgov/nist/javax/sip/header/InReplyTo;

    .line 216
    .line 217
    const-class v2, Lgov/nist/javax/sip/header/InReplyToList;

    .line 218
    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 223
    .line 224
    const-class v1, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    .line 225
    .line 226
    const-class v2, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    .line 227
    .line 228
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 232
    .line 233
    const-class v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    .line 234
    .line 235
    const-class v2, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 241
    .line 242
    const-class v1, Lgov/nist/javax/sip/header/ims/Path;

    .line 243
    .line 244
    const-class v2, Lgov/nist/javax/sip/header/ims/PathList;

    .line 245
    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 250
    .line 251
    const-class v1, Lgov/nist/javax/sip/header/ims/Privacy;

    .line 252
    .line 253
    const-class v2, Lgov/nist/javax/sip/header/ims/PrivacyList;

    .line 254
    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 259
    .line 260
    const-class v1, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    .line 261
    .line 262
    const-class v2, Lgov/nist/javax/sip/header/ims/ServiceRouteList;

    .line 263
    .line 264
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 268
    .line 269
    const-class v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    .line 270
    .line 271
    const-class v2, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    .line 272
    .line 273
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 277
    .line 278
    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    .line 279
    .line 280
    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    .line 281
    .line 282
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 286
    .line 287
    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    .line 288
    .line 289
    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    .line 290
    .line 291
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 295
    .line 296
    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    .line 297
    .line 298
    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    .line 299
    .line 300
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 304
    .line 305
    const-class v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    .line 306
    .line 307
    const-class v2, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;

    .line 308
    .line 309
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    const/4 v0, 0x1

    .line 313
    sput-boolean v0, Lgov/nist/javax/sip/message/ListMap;->initialized:Z

    .line 314
    .line 315
    return-void
.end method
