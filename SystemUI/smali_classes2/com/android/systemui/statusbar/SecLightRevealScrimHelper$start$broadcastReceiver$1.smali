.class public final Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $currentDisplaySize:Lkotlin/jvm/functions/Function0;

.field public final synthetic $getRotation:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->$currentDisplaySize:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->$getRotation:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->$currentDisplaySize:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Point;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->$getRotation:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v1, "info"

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v2, 0xb

    .line 34
    .line 35
    const-string v3, "SecLightRevealScrimHelper"

    .line 36
    .line 37
    if-eq v1, v2, :cond_0

    .line 38
    .line 39
    const-string/jumbo p0, "updateDoubleTap no double tap"

    .line 40
    .line 41
    .line 42
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    .line 48
    .line 49
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 50
    .line 51
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 52
    .line 53
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 58
    .line 59
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 60
    .line 61
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    int-to-float v2, v2

    .line 66
    int-to-float v4, v4

    .line 67
    div-float/2addr v2, v4

    .line 68
    const-string v4, "location"

    .line 69
    .line 70
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    array-length v4, p2

    .line 77
    const/4 v5, 0x2

    .line 78
    if-ne v4, v5, :cond_5

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v6, 0x1

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    if-eq p0, v6, :cond_3

    .line 85
    .line 86
    if-eq p0, v5, :cond_2

    .line 87
    .line 88
    const/4 v5, 0x3

    .line 89
    if-eq p0, v5, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 93
    .line 94
    int-to-float v5, v5

    .line 95
    aget v6, p2, v6

    .line 96
    .line 97
    div-float/2addr v6, v2

    .line 98
    sub-float/2addr v5, v6

    .line 99
    iput v5, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    .line 100
    .line 101
    aget p2, p2, v4

    .line 102
    .line 103
    div-float/2addr p2, v2

    .line 104
    iput p2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 108
    .line 109
    int-to-float v5, v5

    .line 110
    aget v4, p2, v4

    .line 111
    .line 112
    div-float/2addr v4, v2

    .line 113
    sub-float/2addr v5, v4

    .line 114
    iput v5, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    .line 115
    .line 116
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 117
    .line 118
    int-to-float v4, v4

    .line 119
    aget p2, p2, v6

    .line 120
    .line 121
    div-float/2addr p2, v2

    .line 122
    sub-float/2addr v4, p2

    .line 123
    iput v4, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    aget v5, p2, v6

    .line 127
    .line 128
    div-float/2addr v5, v2

    .line 129
    iput v5, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    .line 130
    .line 131
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 132
    .line 133
    int-to-float v5, v5

    .line 134
    aget p2, p2, v4

    .line 135
    .line 136
    div-float/2addr p2, v2

    .line 137
    sub-float/2addr v5, p2

    .line 138
    iput v5, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    aget v4, p2, v4

    .line 142
    .line 143
    div-float/2addr v4, v2

    .line 144
    iput v4, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    .line 145
    .line 146
    aget p2, p2, v6

    .line 147
    .line 148
    div-float/2addr p2, v2

    .line 149
    iput p2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    .line 150
    .line 151
    :cond_5
    :goto_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    .line 152
    .line 153
    if-eqz p2, :cond_6

    .line 154
    .line 155
    iget v4, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    .line 156
    .line 157
    iput v4, p2, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    .line 158
    .line 159
    iget v4, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    .line 160
    .line 161
    iput v4, p2, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    .line 162
    .line 163
    :cond_6
    iget p2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    .line 164
    .line 165
    iget p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    .line 166
    .line 167
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 168
    .line 169
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 170
    .line 171
    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 172
    .line 173
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 174
    .line 175
    const-string/jumbo v6, "updateDoubleTap: secRevealDoubleTapX="

    .line 176
    .line 177
    .line 178
    const-string v7, " secRevealDoubleTapY="

    .line 179
    .line 180
    const-string v8, " currentDisplaySize.x="

    .line 181
    .line 182
    invoke-static {v6, p2, v7, p1, v8}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string p2, " currentDisplaySize.y="

    .line 187
    .line 188
    const-string v6, " initialDisplaySize.x="

    .line 189
    .line 190
    invoke-static {p1, v4, p2, v0, v6}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string p2, " initialDisplaySize.y="

    .line 194
    .line 195
    const-string v0, " screenSizeRatio="

    .line 196
    .line 197
    invoke-static {p1, v5, p2, v1, v0}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string p2, " rotation="

    .line 204
    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :goto_1
    return-void
.end method
