.class public Lgov/nist/javax/sip/address/SipUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/sip/address/SipURI;


# static fields
.field private static final serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected authority:Lgov/nist/javax/sip/address/Authority;

.field protected qheaders:Lgov/nist/core/NameValueList;

.field protected telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

.field protected uriParms:Lgov/nist/core/NameValueList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sip"

    .line 5
    .line 6
    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lgov/nist/core/NameValueList;

    .line 9
    .line 10
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 14
    .line 15
    new-instance v0, Lgov/nist/core/NameValueList;

    .line 16
    .line 17
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 21
    .line 22
    const-string p0, "&"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 6
    .line 7
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    .line 16
    .line 17
    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lgov/nist/core/NameValueList;

    .line 28
    .line 29
    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lgov/nist/core/NameValueList;

    .line 40
    .line 41
    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 42
    .line 43
    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 44
    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 52
    .line 53
    iput-object p0, v0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 54
    .line 55
    :cond_3
    return-object v0
.end method

.method public final encode()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 5
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 8
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "?"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljavax/sip/address/SipURI;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_38

    .line 9
    .line 10
    check-cast p1, Ljavax/sip/address/SipURI;

    .line 11
    .line 12
    iget-object v1, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "sips"

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    check-cast p1, Lgov/nist/javax/sip/address/SipUri;

    .line 21
    .line 22
    iget-object v4, p1, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    xor-int/2addr v1, v3

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    move v1, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    move v3, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v3, v2

    .line 50
    :goto_1
    xor-int/2addr v1, v3

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    return v2

    .line 54
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    move v1, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_5
    move v1, v2

    .line 63
    :goto_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_6

    .line 68
    .line 69
    move v3, v0

    .line 70
    goto :goto_3

    .line 71
    :cond_6
    move v3, v2

    .line 72
    :goto_3
    xor-int/2addr v1, v3

    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    return v2

    .line 76
    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_8

    .line 103
    .line 104
    return v2

    .line 105
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_9

    .line 110
    .line 111
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v3}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_9

    .line 132
    .line 133
    return v2

    .line 134
    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-nez v1, :cond_a

    .line 139
    .line 140
    move v1, v0

    .line 141
    goto :goto_4

    .line 142
    :cond_a
    move v1, v2

    .line 143
    :goto_4
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-nez v3, :cond_b

    .line 148
    .line 149
    move v3, v0

    .line 150
    goto :goto_5

    .line 151
    :cond_b
    move v3, v2

    .line 152
    :goto_5
    xor-int/2addr v1, v3

    .line 153
    if-eqz v1, :cond_c

    .line 154
    .line 155
    return v2

    .line 156
    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_d

    .line 161
    .line 162
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_d

    .line 175
    .line 176
    return v2

    .line 177
    :cond_d
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    if-eqz v1, :cond_10

    .line 181
    .line 182
    iget-object v1, v1, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 183
    .line 184
    if-nez v1, :cond_e

    .line 185
    .line 186
    move-object v1, v3

    .line 187
    goto :goto_6

    .line 188
    :cond_e
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :goto_6
    if-nez v1, :cond_f

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_f
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 196
    .line 197
    iget-object v1, v1, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_10
    :goto_7
    move-object v1, v3

    .line 201
    :goto_8
    const/4 v4, -0x1

    .line 202
    if-nez v1, :cond_11

    .line 203
    .line 204
    move v1, v4

    .line 205
    goto :goto_9

    .line 206
    :cond_11
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getPort()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    :goto_9
    iget-object v5, p1, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 211
    .line 212
    if-eqz v5, :cond_14

    .line 213
    .line 214
    iget-object v5, v5, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 215
    .line 216
    if-nez v5, :cond_12

    .line 217
    .line 218
    move-object v5, v3

    .line 219
    goto :goto_a

    .line 220
    :cond_12
    invoke-virtual {v5}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    :goto_a
    if-nez v5, :cond_13

    .line 225
    .line 226
    goto :goto_b

    .line 227
    :cond_13
    iget-object v5, p1, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 228
    .line 229
    iget-object v5, v5, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 230
    .line 231
    goto :goto_c

    .line 232
    :cond_14
    :goto_b
    move-object v5, v3

    .line 233
    :goto_c
    if-nez v5, :cond_15

    .line 234
    .line 235
    move v5, v4

    .line 236
    goto :goto_d

    .line 237
    :cond_15
    invoke-virtual {v5}, Lgov/nist/core/HostPort;->getPort()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    :goto_d
    if-eq v1, v5, :cond_16

    .line 242
    .line 243
    return v2

    .line 244
    :cond_16
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getParameterNames()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_18

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    check-cast v5, Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-virtual {p1, v5}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    if-eqz v6, :cond_17

    .line 269
    .line 270
    if-eqz v5, :cond_17

    .line 271
    .line 272
    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-nez v5, :cond_17

    .line 285
    .line 286
    return v2

    .line 287
    :cond_18
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 288
    .line 289
    const-string v5, "transport"

    .line 290
    .line 291
    if-eqz v1, :cond_19

    .line 292
    .line 293
    invoke-virtual {v1, v5}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    check-cast v1, Ljava/lang/String;

    .line 298
    .line 299
    goto :goto_e

    .line 300
    :cond_19
    move-object v1, v3

    .line 301
    :goto_e
    if-nez v1, :cond_1a

    .line 302
    .line 303
    move v1, v0

    .line 304
    goto :goto_f

    .line 305
    :cond_1a
    move v1, v2

    .line 306
    :goto_f
    iget-object v6, p1, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 307
    .line 308
    if-eqz v6, :cond_1b

    .line 309
    .line 310
    invoke-virtual {v6, v5}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    check-cast v5, Ljava/lang/String;

    .line 315
    .line 316
    goto :goto_10

    .line 317
    :cond_1b
    move-object v5, v3

    .line 318
    :goto_10
    if-nez v5, :cond_1c

    .line 319
    .line 320
    move v5, v0

    .line 321
    goto :goto_11

    .line 322
    :cond_1c
    move v5, v2

    .line 323
    :goto_11
    xor-int/2addr v1, v5

    .line 324
    if-eqz v1, :cond_1d

    .line 325
    .line 326
    return v2

    .line 327
    :cond_1d
    const-string v1, "user"

    .line 328
    .line 329
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    if-nez v5, :cond_1e

    .line 334
    .line 335
    move v5, v0

    .line 336
    goto :goto_12

    .line 337
    :cond_1e
    move v5, v2

    .line 338
    :goto_12
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    if-nez v1, :cond_1f

    .line 343
    .line 344
    move v1, v0

    .line 345
    goto :goto_13

    .line 346
    :cond_1f
    move v1, v2

    .line 347
    :goto_13
    xor-int/2addr v1, v5

    .line 348
    if-eqz v1, :cond_20

    .line 349
    .line 350
    return v2

    .line 351
    :cond_20
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 352
    .line 353
    const-string v5, "ttl"

    .line 354
    .line 355
    invoke-virtual {v1, v5}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    check-cast v1, Ljava/lang/Integer;

    .line 360
    .line 361
    if-eqz v1, :cond_21

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    goto :goto_14

    .line 368
    :cond_21
    move v1, v4

    .line 369
    :goto_14
    if-ne v1, v4, :cond_22

    .line 370
    .line 371
    move v1, v0

    .line 372
    goto :goto_15

    .line 373
    :cond_22
    move v1, v2

    .line 374
    :goto_15
    iget-object v6, p1, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 375
    .line 376
    invoke-virtual {v6, v5}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    check-cast v5, Ljava/lang/Integer;

    .line 381
    .line 382
    if-eqz v5, :cond_23

    .line 383
    .line 384
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    goto :goto_16

    .line 389
    :cond_23
    move v5, v4

    .line 390
    :goto_16
    if-ne v5, v4, :cond_24

    .line 391
    .line 392
    move v4, v0

    .line 393
    goto :goto_17

    .line 394
    :cond_24
    move v4, v2

    .line 395
    :goto_17
    xor-int/2addr v1, v4

    .line 396
    if-eqz v1, :cond_25

    .line 397
    .line 398
    return v2

    .line 399
    :cond_25
    const-string v1, "method"

    .line 400
    .line 401
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    if-nez v4, :cond_26

    .line 406
    .line 407
    move v4, v0

    .line 408
    goto :goto_18

    .line 409
    :cond_26
    move v4, v2

    .line 410
    :goto_18
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    if-nez v1, :cond_27

    .line 415
    .line 416
    move v1, v0

    .line 417
    goto :goto_19

    .line 418
    :cond_27
    move v1, v2

    .line 419
    :goto_19
    xor-int/2addr v1, v4

    .line 420
    if-eqz v1, :cond_28

    .line 421
    .line 422
    return v2

    .line 423
    :cond_28
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 424
    .line 425
    const-string v4, "maddr"

    .line 426
    .line 427
    invoke-virtual {v1, v4}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    if-nez v1, :cond_29

    .line 432
    .line 433
    move-object v1, v3

    .line 434
    goto :goto_1a

    .line 435
    :cond_29
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    check-cast v1, Ljava/lang/String;

    .line 440
    .line 441
    :goto_1a
    if-nez v1, :cond_2a

    .line 442
    .line 443
    move v1, v0

    .line 444
    goto :goto_1b

    .line 445
    :cond_2a
    move v1, v2

    .line 446
    :goto_1b
    iget-object v5, p1, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 447
    .line 448
    invoke-virtual {v5, v4}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    if-nez v4, :cond_2b

    .line 453
    .line 454
    move-object v4, v3

    .line 455
    goto :goto_1c

    .line 456
    :cond_2b
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    check-cast v4, Ljava/lang/String;

    .line 461
    .line 462
    :goto_1c
    if-nez v4, :cond_2c

    .line 463
    .line 464
    move v4, v0

    .line 465
    goto :goto_1d

    .line 466
    :cond_2c
    move v4, v2

    .line 467
    :goto_1d
    xor-int/2addr v1, v4

    .line 468
    if-eqz v1, :cond_2d

    .line 469
    .line 470
    return v2

    .line 471
    :cond_2d
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHeaderNames()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-eqz v1, :cond_2e

    .line 480
    .line 481
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getHeaderNames()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-nez v1, :cond_2e

    .line 490
    .line 491
    return v2

    .line 492
    :cond_2e
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHeaderNames()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-nez v1, :cond_2f

    .line 501
    .line 502
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getHeaderNames()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-eqz v1, :cond_2f

    .line 511
    .line 512
    return v2

    .line 513
    :cond_2f
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHeaderNames()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    if-eqz v1, :cond_37

    .line 522
    .line 523
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getHeaderNames()Ljava/util/Iterator;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-eqz v1, :cond_37

    .line 532
    .line 533
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_2

    .line 538
    .line 539
    .line 540
    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    .line 541
    .line 542
    invoke-direct {v1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    .line 544
    .line 545
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHeaderNames()Ljava/util/Iterator;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    :cond_30
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    if-eqz v4, :cond_37

    .line 554
    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    check-cast v4, Ljava/lang/String;

    .line 560
    .line 561
    iget-object v5, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 562
    .line 563
    invoke-virtual {v5, v4}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    if-eqz v5, :cond_31

    .line 568
    .line 569
    iget-object v5, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 570
    .line 571
    invoke-virtual {v5, v4}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    goto :goto_1f

    .line 580
    :cond_31
    move-object v5, v3

    .line 581
    :goto_1f
    iget-object v6, p1, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 582
    .line 583
    invoke-virtual {v6, v4}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    if-eqz v6, :cond_32

    .line 588
    .line 589
    iget-object v6, p1, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 590
    .line 591
    invoke-virtual {v6, v4}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v6

    .line 595
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    goto :goto_20

    .line 600
    :cond_32
    move-object v6, v3

    .line 601
    :goto_20
    if-nez v5, :cond_33

    .line 602
    .line 603
    if-eqz v6, :cond_33

    .line 604
    .line 605
    return v2

    .line 606
    :cond_33
    if-nez v6, :cond_34

    .line 607
    .line 608
    if-eqz v5, :cond_34

    .line 609
    .line 610
    return v2

    .line 611
    :cond_34
    if-nez v5, :cond_35

    .line 612
    .line 613
    if-nez v6, :cond_35

    .line 614
    .line 615
    goto :goto_1e

    .line 616
    :cond_35
    :try_start_2
    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    invoke-static {v4, v5}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    invoke-static {v4, v6}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    invoke-interface {v5, v4}, Ljavax/sip/header/Header;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v4
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 636
    if-nez v4, :cond_30

    .line 637
    .line 638
    return v2

    .line 639
    :catch_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    return v2

    .line 646
    :catch_1
    move-exception p0

    .line 647
    :try_start_3
    instance-of p1, p0, Ljavax/sip/PeerUnavailableException;

    .line 648
    .line 649
    if-eqz p1, :cond_36

    .line 650
    .line 651
    check-cast p0, Ljavax/sip/PeerUnavailableException;

    .line 652
    .line 653
    throw p0

    .line 654
    :cond_36
    new-instance p1, Ljavax/sip/PeerUnavailableException;

    .line 655
    .line 656
    const-string v0, "Failed to create HeaderFactory"

    .line 657
    .line 658
    invoke-direct {p1, v0, p0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 659
    .line 660
    .line 661
    throw p1
    :try_end_3
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_3 .. :try_end_3} :catch_2

    .line 662
    :catch_2
    return v2

    .line 663
    :cond_37
    return v0

    .line 664
    :cond_38
    return v2
.end method

.method public final getHeaderNames()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    if-nez v0, :cond_2

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 21
    .line 22
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 23
    .line 24
    if-nez p0, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_1
    invoke-virtual {v1}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    instance-of p1, p0, Lgov/nist/core/GenericObject;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    check-cast p0, Lgov/nist/core/GenericObject;

    .line 16
    .line 17
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getParameterNames()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPort()I
    .locals 2

    .line 1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 20
    .line 21
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 22
    .line 23
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    return p0

    .line 27
    :cond_3
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getPort()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 2
    .line 3
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final getUserPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 8
    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final removeHeaders()V
    .locals 1

    .line 1
    new-instance v0, Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 7
    .line 8
    return-void
.end method

.method public final removeParameter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeParameters()V
    .locals 1

    .line 1
    new-instance v0, Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 7
    .line 8
    return-void
.end method

.method public final setHostPort(Lgov/nist/core/HostPort;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    .line 6
    .line 7
    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 13
    .line 14
    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 15
    .line 16
    return-void
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "ttl"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    new-instance p0, Ljava/text/ParseException;

    .line 14
    .line 15
    const-string p1, "bad parameter "

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_0
    :goto_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setQHeader(Lgov/nist/core/NameValue;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setScheme(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sip"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "sips"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "bad scheme "

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public final setUriParameter(Lgov/nist/core/NameValue;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUser(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    .line 6
    .line 7
    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 13
    .line 14
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    .line 19
    .line 20
    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 24
    .line 25
    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 26
    .line 27
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    const-string v0, "#"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-gez v0, :cond_2

    .line 38
    .line 39
    const-string v0, ";"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-ltz p1, :cond_3

    .line 46
    .line 47
    :cond_2
    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p1, 0x2

    .line 52
    iput p1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final setUserParam(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    const-string v0, "user"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setUserPassword(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    .line 6
    .line 7
    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 13
    .line 14
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    .line 19
    .line 20
    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 24
    .line 25
    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 26
    .line 27
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
