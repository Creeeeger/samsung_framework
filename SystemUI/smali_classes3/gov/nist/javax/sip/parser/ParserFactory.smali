.class public final Lgov/nist/javax/sip/parser/ParserFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final constructorArgs:[Ljava/lang/Class;

.field public static final parserConstructorCache:Ljava/util/Hashtable;

.field public static final parserTable:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 7
    .line 8
    new-instance v1, Ljava/util/Hashtable;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Ljava/lang/Class;

    .line 17
    .line 18
    sput-object v1, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const-class v3, Ljava/lang/String;

    .line 22
    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    const-string v1, "Reply-To"

    .line 26
    .line 27
    const-class v2, Lgov/nist/javax/sip/parser/ReplyToParser;

    .line 28
    .line 29
    const-string v3, "In-Reply-To"

    .line 30
    .line 31
    const-class v4, Lgov/nist/javax/sip/parser/InReplyToParser;

    .line 32
    .line 33
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "Accept-Encoding"

    .line 37
    .line 38
    const-class v2, Lgov/nist/javax/sip/parser/AcceptEncodingParser;

    .line 39
    .line 40
    const-string v3, "Accept-Language"

    .line 41
    .line 42
    const-class v4, Lgov/nist/javax/sip/parser/AcceptLanguageParser;

    .line 43
    .line 44
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "t"

    .line 48
    .line 49
    const-class v2, Lgov/nist/javax/sip/parser/ToParser;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v1, "To"

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v1, "From"

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-class v2, Lgov/nist/javax/sip/parser/FromParser;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v1, "f"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string v1, "CSeq"

    .line 80
    .line 81
    const-class v2, Lgov/nist/javax/sip/parser/CSeqParser;

    .line 82
    .line 83
    const-string v3, "Via"

    .line 84
    .line 85
    const-class v4, Lgov/nist/javax/sip/parser/ViaParser;

    .line 86
    .line 87
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "v"

    .line 91
    .line 92
    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v1, "Contact"

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-class v2, Lgov/nist/javax/sip/parser/ContactParser;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-string v1, "m"

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v1, "Content-Type"

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-class v2, Lgov/nist/javax/sip/parser/ContentTypeParser;

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string v1, "c"

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-string v1, "Content-Length"

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-class v2, Lgov/nist/javax/sip/parser/ContentLengthParser;

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const-string v1, "l"

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const-string v1, "Authorization"

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-class v2, Lgov/nist/javax/sip/parser/AuthorizationParser;

    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const-string v1, "WWW-Authenticate"

    .line 155
    .line 156
    const-class v2, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;

    .line 157
    .line 158
    const-string v3, "Call-ID"

    .line 159
    .line 160
    const-class v4, Lgov/nist/javax/sip/parser/CallIDParser;

    .line 161
    .line 162
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 163
    .line 164
    .line 165
    const-string v1, "i"

    .line 166
    .line 167
    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const-string v1, "Route"

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-class v2, Lgov/nist/javax/sip/parser/RouteParser;

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    const-string v1, "Record-Route"

    .line 182
    .line 183
    const-class v2, Lgov/nist/javax/sip/parser/RecordRouteParser;

    .line 184
    .line 185
    const-string v3, "Date"

    .line 186
    .line 187
    const-class v4, Lgov/nist/javax/sip/parser/DateParser;

    .line 188
    .line 189
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 190
    .line 191
    .line 192
    const-string v1, "Proxy-Authorization"

    .line 193
    .line 194
    const-class v2, Lgov/nist/javax/sip/parser/ProxyAuthorizationParser;

    .line 195
    .line 196
    const-string v3, "Proxy-Authenticate"

    .line 197
    .line 198
    const-class v4, Lgov/nist/javax/sip/parser/ProxyAuthenticateParser;

    .line 199
    .line 200
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 201
    .line 202
    .line 203
    const-string v1, "Retry-After"

    .line 204
    .line 205
    const-class v2, Lgov/nist/javax/sip/parser/RetryAfterParser;

    .line 206
    .line 207
    const-string v3, "Require"

    .line 208
    .line 209
    const-class v4, Lgov/nist/javax/sip/parser/RequireParser;

    .line 210
    .line 211
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 212
    .line 213
    .line 214
    const-string v1, "Proxy-Require"

    .line 215
    .line 216
    const-class v2, Lgov/nist/javax/sip/parser/ProxyRequireParser;

    .line 217
    .line 218
    const-string v3, "Timestamp"

    .line 219
    .line 220
    const-class v4, Lgov/nist/javax/sip/parser/TimeStampParser;

    .line 221
    .line 222
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 223
    .line 224
    .line 225
    const-string v1, "Unsupported"

    .line 226
    .line 227
    const-class v2, Lgov/nist/javax/sip/parser/UnsupportedParser;

    .line 228
    .line 229
    const-string v3, "User-Agent"

    .line 230
    .line 231
    const-class v4, Lgov/nist/javax/sip/parser/UserAgentParser;

    .line 232
    .line 233
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 234
    .line 235
    .line 236
    const-string v1, "Supported"

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const-class v2, Lgov/nist/javax/sip/parser/SupportedParser;

    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    const-string v1, "k"

    .line 248
    .line 249
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    const-string v1, "Server"

    .line 253
    .line 254
    const-class v2, Lgov/nist/javax/sip/parser/ServerParser;

    .line 255
    .line 256
    const-string v3, "Subject"

    .line 257
    .line 258
    const-class v4, Lgov/nist/javax/sip/parser/SubjectParser;

    .line 259
    .line 260
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 261
    .line 262
    .line 263
    const-string v1, "s"

    .line 264
    .line 265
    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    const-string v1, "Subscription-State"

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    const-class v2, Lgov/nist/javax/sip/parser/SubscriptionStateParser;

    .line 275
    .line 276
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    const-string v1, "Max-Forwards"

    .line 280
    .line 281
    const-class v2, Lgov/nist/javax/sip/parser/MaxForwardsParser;

    .line 282
    .line 283
    const-string v3, "MIME-Version"

    .line 284
    .line 285
    const-class v4, Lgov/nist/javax/sip/parser/MimeVersionParser;

    .line 286
    .line 287
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 288
    .line 289
    .line 290
    const-string v1, "Min-Expires"

    .line 291
    .line 292
    const-class v2, Lgov/nist/javax/sip/parser/MinExpiresParser;

    .line 293
    .line 294
    const-string v3, "Organization"

    .line 295
    .line 296
    const-class v4, Lgov/nist/javax/sip/parser/OrganizationParser;

    .line 297
    .line 298
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 299
    .line 300
    .line 301
    const-string v1, "Priority"

    .line 302
    .line 303
    const-class v2, Lgov/nist/javax/sip/parser/PriorityParser;

    .line 304
    .line 305
    const-string v3, "RAck"

    .line 306
    .line 307
    const-class v4, Lgov/nist/javax/sip/parser/RAckParser;

    .line 308
    .line 309
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 310
    .line 311
    .line 312
    const-string v1, "RSeq"

    .line 313
    .line 314
    const-class v2, Lgov/nist/javax/sip/parser/RSeqParser;

    .line 315
    .line 316
    const-string v3, "Reason"

    .line 317
    .line 318
    const-class v4, Lgov/nist/javax/sip/parser/ReasonParser;

    .line 319
    .line 320
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 321
    .line 322
    .line 323
    const-string v1, "Warning"

    .line 324
    .line 325
    const-class v2, Lgov/nist/javax/sip/parser/WarningParser;

    .line 326
    .line 327
    const-string v3, "Expires"

    .line 328
    .line 329
    const-class v4, Lgov/nist/javax/sip/parser/ExpiresParser;

    .line 330
    .line 331
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 332
    .line 333
    .line 334
    const-string v1, "Event"

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const-class v2, Lgov/nist/javax/sip/parser/EventParser;

    .line 341
    .line 342
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    const-string v1, "o"

    .line 346
    .line 347
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    const-string v1, "Error-Info"

    .line 351
    .line 352
    const-class v2, Lgov/nist/javax/sip/parser/ErrorInfoParser;

    .line 353
    .line 354
    const-string v3, "Content-Language"

    .line 355
    .line 356
    const-class v4, Lgov/nist/javax/sip/parser/ContentLanguageParser;

    .line 357
    .line 358
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 359
    .line 360
    .line 361
    const-string v1, "Content-Encoding"

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    const-class v2, Lgov/nist/javax/sip/parser/ContentEncodingParser;

    .line 368
    .line 369
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    const-string v1, "e"

    .line 373
    .line 374
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    const-string v1, "Content-Disposition"

    .line 378
    .line 379
    const-class v2, Lgov/nist/javax/sip/parser/ContentDispositionParser;

    .line 380
    .line 381
    const-string v3, "Call-Info"

    .line 382
    .line 383
    const-class v4, Lgov/nist/javax/sip/parser/CallInfoParser;

    .line 384
    .line 385
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 386
    .line 387
    .line 388
    const-string v1, "Authentication-Info"

    .line 389
    .line 390
    const-class v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;

    .line 391
    .line 392
    const-string v3, "Allow"

    .line 393
    .line 394
    const-class v4, Lgov/nist/javax/sip/parser/AllowParser;

    .line 395
    .line 396
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 397
    .line 398
    .line 399
    const-string v1, "Allow-Events"

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    const-class v2, Lgov/nist/javax/sip/parser/AllowEventsParser;

    .line 406
    .line 407
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    const-string v1, "u"

    .line 411
    .line 412
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    const-string v1, "Alert-Info"

    .line 416
    .line 417
    const-class v2, Lgov/nist/javax/sip/parser/AlertInfoParser;

    .line 418
    .line 419
    const-string v3, "Accept"

    .line 420
    .line 421
    const-class v4, Lgov/nist/javax/sip/parser/AcceptParser;

    .line 422
    .line 423
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 424
    .line 425
    .line 426
    const-string v1, "Refer-To"

    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    const-class v2, Lgov/nist/javax/sip/parser/ReferToParser;

    .line 433
    .line 434
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    const-string v1, "r"

    .line 438
    .line 439
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    const-string v1, "SIP-ETag"

    .line 443
    .line 444
    const-class v3, Lgov/nist/javax/sip/parser/SIPETagParser;

    .line 445
    .line 446
    const-string v4, "SIP-If-Match"

    .line 447
    .line 448
    const-class v5, Lgov/nist/javax/sip/parser/SIPIfMatchParser;

    .line 449
    .line 450
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 451
    .line 452
    .line 453
    const-string v1, "P-Access-Network-Info"

    .line 454
    .line 455
    const-class v3, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;

    .line 456
    .line 457
    const-string v4, "P-Asserted-Identity"

    .line 458
    .line 459
    const-class v5, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;

    .line 460
    .line 461
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 462
    .line 463
    .line 464
    const-string v1, "P-Preferred-Identity"

    .line 465
    .line 466
    const-class v3, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;

    .line 467
    .line 468
    const-string v4, "P-Charging-Vector"

    .line 469
    .line 470
    const-class v5, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;

    .line 471
    .line 472
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 473
    .line 474
    .line 475
    const-string v1, "P-Charging-Function-Addresses"

    .line 476
    .line 477
    const-class v3, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;

    .line 478
    .line 479
    const-string v4, "P-Media-Authorization"

    .line 480
    .line 481
    const-class v5, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;

    .line 482
    .line 483
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 484
    .line 485
    .line 486
    const-string v1, "Path"

    .line 487
    .line 488
    const-class v3, Lgov/nist/javax/sip/parser/ims/PathParser;

    .line 489
    .line 490
    const-string v4, "Privacy"

    .line 491
    .line 492
    const-class v5, Lgov/nist/javax/sip/parser/ims/PrivacyParser;

    .line 493
    .line 494
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 495
    .line 496
    .line 497
    const-string v1, "Service-Route"

    .line 498
    .line 499
    const-class v3, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;

    .line 500
    .line 501
    const-string v4, "P-Visited-Network-ID"

    .line 502
    .line 503
    const-class v5, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;

    .line 504
    .line 505
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 506
    .line 507
    .line 508
    const-string v1, "P-Associated-URI"

    .line 509
    .line 510
    const-class v3, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;

    .line 511
    .line 512
    const-string v4, "P-Called-Party-ID"

    .line 513
    .line 514
    const-class v5, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;

    .line 515
    .line 516
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 517
    .line 518
    .line 519
    const-string v1, "Security-Server"

    .line 520
    .line 521
    const-class v3, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;

    .line 522
    .line 523
    const-string v4, "Security-Client"

    .line 524
    .line 525
    const-class v5, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;

    .line 526
    .line 527
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 528
    .line 529
    .line 530
    const-string v1, "Security-Verify"

    .line 531
    .line 532
    const-class v3, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;

    .line 533
    .line 534
    const-string v4, "Referred-By"

    .line 535
    .line 536
    const-class v5, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;

    .line 537
    .line 538
    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 539
    .line 540
    .line 541
    const-string v1, "b"

    .line 542
    .line 543
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    const-string v1, "Session-Expires"

    .line 547
    .line 548
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    const-class v2, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;

    .line 553
    .line 554
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    const-string v1, "x"

    .line 558
    .line 559
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    const-string v1, "Min-SE"

    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    const-class v2, Lgov/nist/javax/sip/parser/extensions/MinSEParser;

    .line 569
    .line 570
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    const-string v1, "Replaces"

    .line 574
    .line 575
    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;

    .line 576
    .line 577
    const-string v3, "Join"

    .line 578
    .line 579
    const-class v4, Lgov/nist/javax/sip/parser/extensions/JoinParser;

    .line 580
    .line 581
    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 582
    .line 583
    .line 584
    const-string v1, "References"

    .line 585
    .line 586
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;

    .line 591
    .line 592
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
