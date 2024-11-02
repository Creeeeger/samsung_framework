.class public final Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final APP_IDENTITY:Ljava/lang/String; = "app identity"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final INTERFACE_REGEX:Ljava/util/regex/Pattern;

.field public static final NETWORK_INTERFACE:Ljava/lang/String; = "network interface"

.field public static final PARAMETERS:Ljava/lang/String; = "Parameter(s): "

.field public static final PORT_LOCATION:Ljava/lang/String; = "port location"

.field public static final PORT_NUMBER:Ljava/lang/String; = "port number"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final SIZE_IPV4_ADDRESS:I = 0x4

.field public static final SIZE_IPV6_ADDRESS:I = 0x10

.field public static final SIZE_SHORT_INT:I = 0x2

.field public static final SOURCE_ADDRESS:Ljava/lang/String; = "source address"

.field public static final SOURCE_PORT_NUMBER:Ljava/lang/String; = "source port number"

.field public static final TARGET_IP:Ljava/lang/String; = "target IP"

.field public static final TARGET_PORT_NUMBER:Ljava/lang/String; = "target port number"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[a-z_]{2,}([0-9]*|\\+?)$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->INTERFACE_REGEX:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromHexToInt(Ljava/lang/String;)J
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public static convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    if-eqz p0, :cond_e

    .line 2
    .line 3
    const-string v0, "::"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v1, v0

    .line 18
    const-string v2, "0:"

    .line 19
    .line 20
    const/4 v3, 0x7

    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v6, ":"

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    if-ne v1, v7, :cond_8

    .line 28
    .line 29
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/16 v1, 0x3a

    .line 34
    .line 35
    if-ne p0, v1, :cond_4

    .line 36
    .line 37
    aget-object p0, v0, v5

    .line 38
    .line 39
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    array-length v0, p0

    .line 44
    rsub-int/lit8 v0, v0, 0x8

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_0
    if-ge v5, v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v2, v0

    .line 60
    :goto_1
    if-ge v2, v4, :cond_3

    .line 61
    .line 62
    sub-int v5, v2, v0

    .line 63
    .line 64
    aget-object v5, p0, v5

    .line 65
    .line 66
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    if-eq v2, v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_4
    aget-object p0, v0, v5

    .line 83
    .line 84
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    array-length v0, p0

    .line 89
    rsub-int/lit8 v0, v0, 0x8

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_2
    if-ge v5, v0, :cond_5

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    aget-object v7, p0, v5

    .line 104
    .line 105
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    :goto_3
    if-ge v0, v4, :cond_7

    .line 122
    .line 123
    const-string p0, "0"

    .line 124
    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    if-eq v0, v3, :cond_6

    .line 129
    .line 130
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :cond_8
    array-length p0, v0

    .line 142
    const/4 v1, 0x2

    .line 143
    if-ne p0, v1, :cond_d

    .line 144
    .line 145
    aget-object p0, v0, v5

    .line 146
    .line 147
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    aget-object v0, v0, v7

    .line 152
    .line 153
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    array-length v1, p0

    .line 158
    rsub-int/lit8 v1, v1, 0x8

    .line 159
    .line 160
    array-length v7, v0

    .line 161
    sub-int/2addr v1, v7

    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    :goto_4
    array-length v8, p0

    .line 168
    if-ge v5, v8, :cond_9

    .line 169
    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    aget-object v9, p0, v5

    .line 176
    .line 177
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_9
    array-length v5, p0

    .line 194
    :goto_5
    array-length v8, p0

    .line 195
    add-int/2addr v8, v1

    .line 196
    if-ge v5, v8, :cond_a

    .line 197
    .line 198
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    add-int/lit8 v5, v5, 0x1

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_a
    array-length v2, p0

    .line 205
    add-int/2addr v2, v1

    .line 206
    :goto_6
    if-ge v2, v4, :cond_c

    .line 207
    .line 208
    array-length v5, p0

    .line 209
    sub-int v5, v2, v5

    .line 210
    .line 211
    sub-int/2addr v5, v1

    .line 212
    aget-object v5, v0, v5

    .line 213
    .line 214
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    if-eq v2, v3, :cond_b

    .line 218
    .line 219
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    return-object p0

    .line 230
    :cond_d
    const/4 p0, 0x0

    .line 231
    :cond_e
    :goto_7
    return-object p0
.end method

.method public static isIpv4MappedAddress([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    const/16 v2, 0xa

    .line 12
    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    aget-byte v2, p0, v1

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    aget-byte v1, p0, v2

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    if-ne v1, v2, :cond_4

    .line 27
    .line 28
    const/16 v1, 0xb

    .line 29
    .line 30
    aget-byte p0, p0, v1

    .line 31
    .line 32
    if-eq p0, v2, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_4
    :goto_1
    return v0
.end method

.method public static translateIpv4MappedAddress([B)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->isIpv4MappedAddress([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static translateIpv4TextualAddress(Ljava/lang/String;)[B
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_13

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_a

    .line 13
    .line 14
    :cond_0
    const/4 v2, 0x4

    .line 15
    new-array v3, v2, [B

    .line 16
    .line 17
    const-string v4, "\\."

    .line 18
    .line 19
    const/4 v5, -0x1

    .line 20
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :try_start_0
    array-length v4, v0

    .line 25
    const-wide/32 v6, 0xffffff

    .line 26
    .line 27
    .line 28
    const/16 v8, 0x8

    .line 29
    .line 30
    const-wide/32 v9, 0xffff

    .line 31
    .line 32
    .line 33
    const/4 v11, 0x3

    .line 34
    const-wide/16 v12, 0x0

    .line 35
    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    const-wide/16 v16, 0xff

    .line 40
    .line 41
    if-eq v4, v5, :cond_f

    .line 42
    .line 43
    if-eq v4, v15, :cond_a

    .line 44
    .line 45
    if-eq v4, v11, :cond_4

    .line 46
    .line 47
    if-eq v4, v2, :cond_1

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_1
    :goto_0
    if-ge v14, v2, :cond_11

    .line 51
    .line 52
    aget-object v4, v0, v14

    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    int-to-long v4, v4

    .line 59
    cmp-long v6, v4, v12

    .line 60
    .line 61
    if-ltz v6, :cond_3

    .line 62
    .line 63
    cmp-long v6, v4, v16

    .line 64
    .line 65
    if-lez v6, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    and-long v4, v4, v16

    .line 69
    .line 70
    long-to-int v4, v4

    .line 71
    int-to-byte v4, v4

    .line 72
    aput-byte v4, v3, v14

    .line 73
    .line 74
    add-int/lit8 v14, v14, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    :goto_1
    return-object v1

    .line 78
    :cond_4
    :goto_2
    if-ge v14, v15, :cond_7

    .line 79
    .line 80
    aget-object v2, v0, v14

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    int-to-long v4, v2

    .line 87
    cmp-long v2, v4, v12

    .line 88
    .line 89
    if-ltz v2, :cond_6

    .line 90
    .line 91
    cmp-long v2, v4, v16

    .line 92
    .line 93
    if-lez v2, :cond_5

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    and-long v4, v4, v16

    .line 97
    .line 98
    long-to-int v2, v4

    .line 99
    int-to-byte v2, v2

    .line 100
    aput-byte v2, v3, v14

    .line 101
    .line 102
    add-int/lit8 v14, v14, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    :goto_3
    return-object v1

    .line 106
    :cond_7
    aget-object v0, v0, v15

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    int-to-long v4, v0

    .line 113
    cmp-long v0, v4, v12

    .line 114
    .line 115
    if-ltz v0, :cond_9

    .line 116
    .line 117
    cmp-long v0, v4, v9

    .line 118
    .line 119
    if-lez v0, :cond_8

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    shr-long v6, v4, v8

    .line 123
    .line 124
    and-long v6, v6, v16

    .line 125
    .line 126
    long-to-int v0, v6

    .line 127
    int-to-byte v0, v0

    .line 128
    aput-byte v0, v3, v15

    .line 129
    .line 130
    and-long v4, v4, v16

    .line 131
    .line 132
    long-to-int v0, v4

    .line 133
    int-to-byte v0, v0

    .line 134
    aput-byte v0, v3, v11

    .line 135
    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :cond_9
    :goto_4
    return-object v1

    .line 139
    :cond_a
    aget-object v2, v0, v14

    .line 140
    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    int-to-long v1, v2

    .line 146
    cmp-long v18, v1, v12

    .line 147
    .line 148
    if-ltz v18, :cond_e

    .line 149
    .line 150
    cmp-long v18, v1, v16

    .line 151
    .line 152
    if-lez v18, :cond_b

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_b
    and-long v1, v1, v16

    .line 156
    .line 157
    long-to-int v1, v1

    .line 158
    int-to-byte v1, v1

    .line 159
    :try_start_1
    aput-byte v1, v3, v14

    .line 160
    .line 161
    aget-object v0, v0, v5

    .line 162
    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    int-to-long v0, v0

    .line 168
    cmp-long v2, v0, v12

    .line 169
    .line 170
    if-ltz v2, :cond_d

    .line 171
    .line 172
    cmp-long v2, v0, v6

    .line 173
    .line 174
    if-lez v2, :cond_c

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_c
    const/16 v2, 0x10

    .line 178
    .line 179
    shr-long v6, v0, v2

    .line 180
    .line 181
    and-long v6, v6, v16

    .line 182
    .line 183
    long-to-int v2, v6

    .line 184
    int-to-byte v2, v2

    .line 185
    aput-byte v2, v3, v5

    .line 186
    .line 187
    and-long v5, v0, v9

    .line 188
    .line 189
    shr-long/2addr v5, v8

    .line 190
    and-long v5, v5, v16

    .line 191
    .line 192
    long-to-int v2, v5

    .line 193
    int-to-byte v2, v2

    .line 194
    aput-byte v2, v3, v15

    .line 195
    .line 196
    and-long v0, v0, v16

    .line 197
    .line 198
    long-to-int v0, v0

    .line 199
    int-to-byte v0, v0

    .line 200
    aput-byte v0, v3, v11

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_d
    :goto_5
    const/4 v0, 0x0

    .line 204
    return-object v0

    .line 205
    :cond_e
    :goto_6
    const/4 v0, 0x0

    .line 206
    return-object v0

    .line 207
    :cond_f
    aget-object v0, v0, v14

    .line 208
    .line 209
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 210
    .line 211
    .line 212
    move-result-wide v0

    .line 213
    cmp-long v2, v0, v12

    .line 214
    .line 215
    if-ltz v2, :cond_12

    .line 216
    .line 217
    const-wide v12, 0xffffffffL

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    cmp-long v2, v0, v12

    .line 223
    .line 224
    if-lez v2, :cond_10

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_10
    const/16 v2, 0x18

    .line 228
    .line 229
    shr-long v12, v0, v2

    .line 230
    .line 231
    and-long v12, v12, v16

    .line 232
    .line 233
    long-to-int v2, v12

    .line 234
    int-to-byte v2, v2

    .line 235
    aput-byte v2, v3, v14

    .line 236
    .line 237
    and-long/2addr v6, v0

    .line 238
    const/16 v2, 0x10

    .line 239
    .line 240
    shr-long/2addr v6, v2

    .line 241
    and-long v6, v6, v16

    .line 242
    .line 243
    long-to-int v2, v6

    .line 244
    int-to-byte v2, v2

    .line 245
    aput-byte v2, v3, v5

    .line 246
    .line 247
    and-long v5, v0, v9

    .line 248
    .line 249
    shr-long/2addr v5, v8

    .line 250
    and-long v5, v5, v16

    .line 251
    .line 252
    long-to-int v2, v5

    .line 253
    int-to-byte v2, v2

    .line 254
    aput-byte v2, v3, v15

    .line 255
    .line 256
    and-long v0, v0, v16

    .line 257
    .line 258
    long-to-int v0, v0

    .line 259
    int-to-byte v0, v0

    .line 260
    aput-byte v0, v3, v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    .line 262
    :cond_11
    :goto_7
    return-object v3

    .line 263
    :cond_12
    :goto_8
    const/4 v0, 0x0

    .line 264
    return-object v0

    .line 265
    :catch_0
    const/4 v0, 0x0

    .line 266
    goto :goto_9

    .line 267
    :catch_1
    move-object v0, v1

    .line 268
    :goto_9
    return-object v0

    .line 269
    :cond_13
    :goto_a
    move-object v0, v1

    .line 270
    return-object v0
.end method

.method public static validadeIpv4Range(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "-"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_5

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v1, p0

    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne v1, v2, :cond_5

    .line 20
    .line 21
    aget-object v1, p0, v0

    .line 22
    .line 23
    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aget-object v2, p0, v1

    .line 31
    .line 32
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    aget-object v2, p0, v0

    .line 39
    .line 40
    const-string v3, "\\."

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    aget-object p0, p0, v1

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    array-length v3, v2

    .line 55
    const/4 v4, 0x4

    .line 56
    if-ne v3, v4, :cond_5

    .line 57
    .line 58
    if-eqz p0, :cond_5

    .line 59
    .line 60
    array-length v3, p0

    .line 61
    if-eq v3, v4, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v3, v0

    .line 65
    :goto_0
    if-ge v3, v4, :cond_4

    .line 66
    .line 67
    :try_start_0
    aget-object v5, v2, v3

    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    aget-object v6, p0, v3

    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    if-le v5, v6, :cond_2

    .line 80
    .line 81
    return v0

    .line 82
    :cond_2
    if-ge v5, v6, :cond_3

    .line 83
    .line 84
    return v1

    .line 85
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    return v0

    .line 89
    :cond_4
    return v1

    .line 90
    :cond_5
    :goto_1
    return v0
.end method

.method public static validadeIpv6Range(Ljava/lang/String;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "-"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_7

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    array-length v3, v2

    .line 18
    const/4 v4, 0x2

    .line 19
    if-ne v3, v4, :cond_7

    .line 20
    .line 21
    aget-object v3, v2, v0

    .line 22
    .line 23
    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_7

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    aget-object v2, v2, v3

    .line 31
    .line 32
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_7

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    aget-object v1, p0, v0

    .line 43
    .line 44
    const-string v2, "::"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    aget-object v1, p0, v0

    .line 53
    .line 54
    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    aput-object v1, p0, v0

    .line 59
    .line 60
    :cond_1
    aget-object v1, p0, v3

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    aget-object v1, p0, v3

    .line 69
    .line 70
    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    aput-object v1, p0, v3

    .line 75
    .line 76
    :cond_2
    aget-object v1, p0, v0

    .line 77
    .line 78
    const-string v2, ":"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    aget-object p0, p0, v3

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    array-length v2, v1

    .line 93
    const/16 v4, 0x8

    .line 94
    .line 95
    if-ne v2, v4, :cond_7

    .line 96
    .line 97
    if-eqz p0, :cond_7

    .line 98
    .line 99
    array-length v2, p0

    .line 100
    if-eq v2, v4, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move v2, v0

    .line 104
    :goto_0
    if-ge v2, v4, :cond_6

    .line 105
    .line 106
    aget-object v5, v1, v2

    .line 107
    .line 108
    invoke-static {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertFromHexToInt(Ljava/lang/String;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    aget-object v7, p0, v2

    .line 113
    .line 114
    invoke-static {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertFromHexToInt(Ljava/lang/String;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v7

    .line 118
    cmp-long v5, v5, v7

    .line 119
    .line 120
    if-lez v5, :cond_4

    .line 121
    .line 122
    return v0

    .line 123
    :cond_4
    if-gez v5, :cond_5

    .line 124
    .line 125
    return v3

    .line 126
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    return v3

    .line 130
    :cond_7
    :goto_1
    return v0
.end method

.method public static validadePortNumberRange(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "-"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v1, p0

    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne v1, v2, :cond_2

    .line 20
    .line 21
    aget-object v1, p0, v0

    .line 22
    .line 23
    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aget-object v2, p0, v1

    .line 31
    .line 32
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    :try_start_0
    aget-object v2, p0, v0

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    aget-object p0, p0, v1

    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-le v2, p0, :cond_1

    .line 51
    .line 52
    return v0

    .line 53
    :cond_1
    return v1

    .line 54
    :catch_0
    :cond_2
    return v0
.end method

.method public static validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 9
    .line 10
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 11
    .line 12
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 13
    .line 14
    const-string v2, "Rule is null."

    .line 15
    .line 16
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateUidRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 27
    .line 28
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 29
    .line 30
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateForwardConstraints(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 47
    .line 48
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 49
    .line 50
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAddressType:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAddress:Ljava/lang/String;

    .line 63
    .line 64
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const-string v3, "Parameter(s): address"

    .line 71
    .line 72
    const-string v4, "*"

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :goto_0
    move v1, v5

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    const/4 v1, 0x1

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_6

    .line 130
    .line 131
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_6

    .line 138
    .line 139
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_6

    .line 146
    .line 147
    if-eqz v1, :cond_5

    .line 148
    .line 149
    const-string v1, "Parameter(s): port number"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    const-string v1, ", port number"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :goto_2
    move v1, v5

    .line 161
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-nez v2, :cond_8

    .line 166
    .line 167
    if-eqz v1, :cond_7

    .line 168
    .line 169
    const-string v1, "Parameter(s): port location"

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    const-string v1, ", port location"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :goto_3
    move v1, v5

    .line 181
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 182
    .line 183
    if-eqz v2, :cond_9

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz v2, :cond_9

    .line 190
    .line 191
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_b

    .line 202
    .line 203
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 204
    .line 205
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_b

    .line 214
    .line 215
    :cond_9
    if-eqz v1, :cond_a

    .line 216
    .line 217
    const-string v1, "Parameter(s): app identity"

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_a
    const-string v1, ", app identity"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    :goto_4
    move v1, v5

    .line 229
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mStrNetworkInterface:Ljava/lang/String;

    .line 230
    .line 231
    if-eqz v2, :cond_c

    .line 232
    .line 233
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateInterfaceName(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_d

    .line 238
    .line 239
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mNetworkInterface:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 240
    .line 241
    if-nez v2, :cond_f

    .line 242
    .line 243
    :cond_d
    if-eqz v1, :cond_e

    .line 244
    .line 245
    const-string v1, "Parameter(s): network interface"

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_e
    const-string v1, ", network interface"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    :goto_5
    move v1, v5

    .line 257
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mProtocol:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 258
    .line 259
    if-nez v2, :cond_11

    .line 260
    .line 261
    if-eqz v1, :cond_10

    .line 262
    .line 263
    const-string v1, "Parameter(s): protocol"

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_10
    const-string v1, ", protocol"

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    :goto_6
    move v1, v5

    .line 275
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    if-nez p0, :cond_13

    .line 280
    .line 281
    if-eqz v1, :cond_12

    .line 282
    .line 283
    const-string p0, "Parameter(s): direction"

    .line 284
    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_12
    const-string p0, ", direction"

    .line 290
    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_13
    move v5, v1

    .line 296
    :goto_7
    if-nez v5, :cond_14

    .line 297
    .line 298
    const-string p0, " is(are) invalid."

    .line 299
    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 304
    .line 305
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 306
    .line 307
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-object p0

    .line 317
    :cond_14
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 318
    .line 319
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 320
    .line 321
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 322
    .line 323
    const-string v2, "Parameters validated successfully"

    .line 324
    .line 325
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    return-object p0
.end method

.method public static validateDenyRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 6
    .line 7
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 8
    .line 9
    const-string v2, "Rule is null."

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mRuleType:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    aget v0, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq v0, v1, :cond_4

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 38
    .line 39
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 40
    .line 41
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 42
    .line 43
    const-string v2, "Failed to validate Rule."

    .line 44
    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateRedirectExceptionRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateRedirectRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public static validateForwardConstraints(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mNetworkInterface:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mStrNetworkInterface:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return v1

    .line 57
    :cond_3
    :goto_0
    return v2
.end method

.method public static validateHostName(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "*"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v3, 0xff

    .line 20
    .line 21
    if-le v1, v3, :cond_2

    .line 22
    .line 23
    return v0

    .line 24
    :cond_2
    const-string v1, "\\."

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move v3, v0

    .line 31
    :goto_0
    aget-object v4, v1, v0

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v3, v4, :cond_6

    .line 38
    .line 39
    aget-object v4, v1, v0

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/16 v5, 0x61

    .line 46
    .line 47
    if-lt v4, v5, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x7a

    .line 50
    .line 51
    if-le v4, v5, :cond_4

    .line 52
    .line 53
    :cond_3
    const/16 v5, 0x41

    .line 54
    .line 55
    if-lt v4, v5, :cond_5

    .line 56
    .line 57
    const/16 v5, 0x5a

    .line 58
    .line 59
    if-gt v4, v5, :cond_5

    .line 60
    .line 61
    :cond_4
    move v3, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    move v3, v0

    .line 67
    :goto_1
    if-nez v3, :cond_7

    .line 68
    .line 69
    return v0

    .line 70
    :cond_7
    move v3, v0

    .line 71
    move v4, v3

    .line 72
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-ge v3, v5, :cond_9

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const/16 v6, 0x2e

    .line 83
    .line 84
    if-ne v5, v6, :cond_8

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_9
    array-length p0, v1

    .line 92
    if-lt v4, p0, :cond_a

    .line 93
    .line 94
    return v0

    .line 95
    :cond_a
    array-length p0, v1

    .line 96
    move v3, v0

    .line 97
    :goto_3
    if-ge v3, p0, :cond_c

    .line 98
    .line 99
    aget-object v4, v1, v3

    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const/16 v5, 0x3f

    .line 106
    .line 107
    if-le v4, v5, :cond_b

    .line 108
    .line 109
    return v0

    .line 110
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_c
    array-length p0, v1

    .line 114
    move v3, v0

    .line 115
    :goto_4
    if-ge v3, p0, :cond_f

    .line 116
    .line 117
    aget-object v4, v1, v3

    .line 118
    .line 119
    const-string v5, "^[A-Za-z0-9-]+$"

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_e

    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    const/16 v6, 0x2d

    .line 132
    .line 133
    if-eq v5, v6, :cond_e

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    sub-int/2addr v5, v2

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-ne v4, v6, :cond_d

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_e
    :goto_5
    return v0

    .line 151
    :cond_f
    return v2
.end method

.method public static validateInterfaceName(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mStrNetworkInterface:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->INTERFACE_REGEX:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static validateIpv4Address(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4TextualAddress(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static validateIpv6Address(Ljava/lang/String;)Z
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_16

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    const/16 v1, 0x10

    .line 14
    .line 15
    new-array v2, v1, [B

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x3a

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-ne v3, v4, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    move v3, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v3, v0

    .line 36
    :goto_0
    const/4 v6, -0x1

    .line 37
    move v8, v0

    .line 38
    move v9, v8

    .line 39
    move v10, v9

    .line 40
    move v7, v3

    .line 41
    move v11, v6

    .line 42
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    if-ge v3, v12, :cond_f

    .line 47
    .line 48
    add-int/lit8 v12, v3, 0x1

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-eq v13, v6, :cond_4

    .line 59
    .line 60
    shl-int/lit8 v3, v8, 0x4

    .line 61
    .line 62
    or-int v8, v3, v13

    .line 63
    .line 64
    const v3, 0xffff

    .line 65
    .line 66
    .line 67
    if-le v8, v3, :cond_3

    .line 68
    .line 69
    return v0

    .line 70
    :cond_3
    move v9, v5

    .line 71
    move v3, v12

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    if-ne v3, v4, :cond_9

    .line 74
    .line 75
    if-nez v9, :cond_6

    .line 76
    .line 77
    if-eq v11, v6, :cond_5

    .line 78
    .line 79
    return v0

    .line 80
    :cond_5
    move v11, v10

    .line 81
    :goto_2
    move v3, v12

    .line 82
    move v7, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-ne v12, v3, :cond_7

    .line 89
    .line 90
    return v0

    .line 91
    :cond_7
    add-int/lit8 v3, v10, 0x2

    .line 92
    .line 93
    if-le v3, v1, :cond_8

    .line 94
    .line 95
    return v0

    .line 96
    :cond_8
    add-int/lit8 v3, v10, 0x1

    .line 97
    .line 98
    shr-int/lit8 v7, v8, 0x8

    .line 99
    .line 100
    and-int/lit16 v7, v7, 0xff

    .line 101
    .line 102
    int-to-byte v7, v7

    .line 103
    aput-byte v7, v2, v10

    .line 104
    .line 105
    add-int/lit8 v10, v3, 0x1

    .line 106
    .line 107
    and-int/lit16 v7, v8, 0xff

    .line 108
    .line 109
    int-to-byte v7, v7

    .line 110
    aput-byte v7, v2, v3

    .line 111
    .line 112
    move v8, v0

    .line 113
    move v9, v8

    .line 114
    goto :goto_2

    .line 115
    :cond_9
    const/16 v4, 0x2e

    .line 116
    .line 117
    if-ne v3, v4, :cond_e

    .line 118
    .line 119
    add-int/lit8 v3, v10, 0x4

    .line 120
    .line 121
    if-gt v3, v1, :cond_e

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    move v3, v0

    .line 132
    move v7, v3

    .line 133
    :goto_3
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eq v3, v6, :cond_a

    .line 138
    .line 139
    add-int/lit8 v7, v7, 0x1

    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_a
    const/4 v3, 0x3

    .line 145
    if-eq v7, v3, :cond_b

    .line 146
    .line 147
    return v0

    .line 148
    :cond_b
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4TextualAddress(Ljava/lang/String;)[B

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-nez p0, :cond_c

    .line 153
    .line 154
    return v0

    .line 155
    :cond_c
    move v3, v0

    .line 156
    :goto_4
    const/4 v4, 0x4

    .line 157
    if-ge v3, v4, :cond_d

    .line 158
    .line 159
    add-int/lit8 v4, v10, 0x1

    .line 160
    .line 161
    aget-byte v7, p0, v3

    .line 162
    .line 163
    aput-byte v7, v2, v10

    .line 164
    .line 165
    add-int/lit8 v3, v3, 0x1

    .line 166
    .line 167
    move v10, v4

    .line 168
    goto :goto_4

    .line 169
    :cond_d
    move v9, v0

    .line 170
    goto :goto_5

    .line 171
    :cond_e
    return v0

    .line 172
    :cond_f
    :goto_5
    if-eqz v9, :cond_11

    .line 173
    .line 174
    add-int/lit8 p0, v10, 0x2

    .line 175
    .line 176
    if-le p0, v1, :cond_10

    .line 177
    .line 178
    return v0

    .line 179
    :cond_10
    add-int/lit8 p0, v10, 0x1

    .line 180
    .line 181
    shr-int/lit8 v3, v8, 0x8

    .line 182
    .line 183
    and-int/lit16 v3, v3, 0xff

    .line 184
    .line 185
    int-to-byte v3, v3

    .line 186
    aput-byte v3, v2, v10

    .line 187
    .line 188
    add-int/lit8 v10, p0, 0x1

    .line 189
    .line 190
    and-int/lit16 v3, v8, 0xff

    .line 191
    .line 192
    int-to-byte v3, v3

    .line 193
    aput-byte v3, v2, p0

    .line 194
    .line 195
    :cond_11
    if-eq v11, v6, :cond_14

    .line 196
    .line 197
    sub-int p0, v10, v11

    .line 198
    .line 199
    if-ne v10, v1, :cond_12

    .line 200
    .line 201
    return v0

    .line 202
    :cond_12
    move v3, v5

    .line 203
    :goto_6
    if-gt v3, p0, :cond_13

    .line 204
    .line 205
    rsub-int/lit8 v4, v3, 0x10

    .line 206
    .line 207
    add-int v6, v11, p0

    .line 208
    .line 209
    sub-int/2addr v6, v3

    .line 210
    aget-byte v7, v2, v6

    .line 211
    .line 212
    aput-byte v7, v2, v4

    .line 213
    .line 214
    aput-byte v0, v2, v6

    .line 215
    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_13
    move v10, v1

    .line 220
    :cond_14
    if-eq v10, v1, :cond_15

    .line 221
    .line 222
    return v0

    .line 223
    :cond_15
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4MappedAddress([B)[B

    .line 224
    .line 225
    .line 226
    return v5

    .line 227
    :cond_16
    :goto_7
    return v0
.end method

.method public static validatePackageName(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "*"

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    const-string v1, "\\."

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move v3, v0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ge v3, v5, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/16 v6, 0x2e

    .line 34
    .line 35
    if-ne v5, v6, :cond_2

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    array-length p0, v1

    .line 43
    if-lt v4, p0, :cond_4

    .line 44
    .line 45
    return v0

    .line 46
    :cond_4
    array-length p0, v1

    .line 47
    move v3, v0

    .line 48
    :goto_1
    if-ge v3, p0, :cond_7

    .line 49
    .line 50
    aget-object v4, v1, v3

    .line 51
    .line 52
    const-string v5, "^[A-Za-z0-9_]+$"

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_6

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/16 v6, 0x5f

    .line 65
    .line 66
    if-eq v5, v6, :cond_6

    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/16 v6, 0x30

    .line 73
    .line 74
    if-lt v5, v6, :cond_5

    .line 75
    .line 76
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/16 v5, 0x39

    .line 81
    .line 82
    if-gt v4, v5, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    :goto_2
    return v0

    .line 89
    :cond_7
    return v2
.end method

.method public static validatePortNumber(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 p0, -0x1

    .line 11
    :goto_0
    if-ltz p0, :cond_1

    .line 12
    .line 13
    const v1, 0xffff

    .line 14
    .line 15
    .line 16
    if-gt p0, v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_1
    return v0
.end method

.method public static validateRedirectExceptionRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 9
    .line 10
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 11
    .line 12
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 13
    .line 14
    const-string v2, "Rule is null."

    .line 15
    .line 16
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAddressType:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAddress:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v3, "Parameter(s): address"

    .line 31
    .line 32
    const-string v4, "*"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :goto_0
    move v1, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v1, 0x1

    .line 83
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_4

    .line 90
    .line 91
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    const-string v1, "Parameter(s): port number"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string v1, ", port number"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :goto_2
    move v1, v5

    .line 121
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 122
    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_7

    .line 142
    .line 143
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_7

    .line 154
    .line 155
    :cond_5
    if-eqz v1, :cond_6

    .line 156
    .line 157
    const-string v1, "Parameter(s): app identity"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    const-string v1, ", app identity"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    :goto_3
    move v1, v5

    .line 169
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mProtocol:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 170
    .line 171
    if-nez v2, :cond_9

    .line 172
    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    const-string v1, "Parameter(s): protocol"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    const-string v1, ", protocol"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    :goto_4
    move v1, v5

    .line 187
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mStrNetworkInterface:Ljava/lang/String;

    .line 188
    .line 189
    if-eqz v2, :cond_a

    .line 190
    .line 191
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateInterfaceName(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_b

    .line 196
    .line 197
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mNetworkInterface:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 198
    .line 199
    if-nez p0, :cond_d

    .line 200
    .line 201
    :cond_b
    if-eqz v1, :cond_c

    .line 202
    .line 203
    const-string p0, "Parameter(s): network interface"

    .line 204
    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_c
    const-string p0, ", network interface"

    .line 210
    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_d
    move v5, v1

    .line 216
    :goto_5
    if-nez v5, :cond_e

    .line 217
    .line 218
    const-string p0, " is(are) invalid."

    .line 219
    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 224
    .line 225
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 226
    .line 227
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    return-object p0

    .line 237
    :cond_e
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 238
    .line 239
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 240
    .line 241
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 242
    .line 243
    const-string v2, "Parameters validated successfully"

    .line 244
    .line 245
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-object p0
.end method

.method public static validateRedirectRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 9
    .line 10
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 11
    .line 12
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 13
    .line 14
    const-string v2, "Rule is null."

    .line 15
    .line 16
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAddressType:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAddress:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const-string v5, "Parameter(s): source address"

    .line 31
    .line 32
    const-string v6, "*"

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :goto_0
    move v2, v7

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v2, 0x1

    .line 83
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_4

    .line 90
    .line 91
    iget-object v4, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_4

    .line 98
    .line 99
    iget-object v4, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mPortNumber:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_4

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    const-string v2, "Parameter(s): source port number"

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string v2, ", source port number"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :goto_2
    move v2, v7

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const-string v3, "Parameter(s): target IP"

    .line 130
    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_6

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :goto_3
    move v2, v7

    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_9

    .line 172
    .line 173
    :cond_7
    if-eqz v2, :cond_8

    .line 174
    .line 175
    const-string v1, "Parameter(s): target port number"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    const-string v1, ", target port number"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    :goto_4
    move v2, v7

    .line 187
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 188
    .line 189
    if-eqz v1, :cond_a

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_a

    .line 196
    .line 197
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_c

    .line 208
    .line 209
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_c

    .line 220
    .line 221
    :cond_a
    if-eqz v2, :cond_b

    .line 222
    .line 223
    const-string v1, "Parameter(s): app identity"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_b
    const-string v1, ", app identity"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    :goto_5
    move v2, v7

    .line 235
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mStrNetworkInterface:Ljava/lang/String;

    .line 236
    .line 237
    if-eqz v1, :cond_d

    .line 238
    .line 239
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateInterfaceName(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_e

    .line 244
    .line 245
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mNetworkInterface:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 246
    .line 247
    if-nez v1, :cond_10

    .line 248
    .line 249
    :cond_e
    if-eqz v2, :cond_f

    .line 250
    .line 251
    const-string v1, "Parameter(s): network interface"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_f
    const-string v1, ", network interface"

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    :goto_6
    move v2, v7

    .line 263
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mProtocol:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 264
    .line 265
    if-nez p0, :cond_12

    .line 266
    .line 267
    if-eqz v2, :cond_11

    .line 268
    .line 269
    const-string p0, "Parameter(s): protocol"

    .line 270
    .line 271
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_11
    const-string p0, ", protocol"

    .line 276
    .line 277
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_12
    move v7, v2

    .line 282
    :goto_7
    if-nez v7, :cond_13

    .line 283
    .line 284
    const-string p0, " is(are) invalid."

    .line 285
    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 290
    .line 291
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 292
    .line 293
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-object p0

    .line 303
    :cond_13
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 304
    .line 305
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 306
    .line 307
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 308
    .line 309
    const-string v2, "Parameters validated successfully"

    .line 310
    .line 311
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return-object p0
.end method

.method public static validateUidRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "*"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method
