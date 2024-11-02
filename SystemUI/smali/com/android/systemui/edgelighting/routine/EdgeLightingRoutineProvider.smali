.class public Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;
.super Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

.field public mEdgeLightingEffect:Ljava/lang/String;

.field public mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

.field public final mHandler:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

.field public mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;-><init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getCurrentParam()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getLabelParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "EdgeLightingRoutineProvider"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ";"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "getLabelParam param="

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aget-object v3, p1, v2

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    aget-object p1, p1, v2

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_0
    const-string p1, "getLabelParam text is empty"

    .line 75
    .line 76
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const p1, 0x7f130514

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public final onAct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onAct : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, ", "

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "EdgeLightingRoutineProvider"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_4

    .line 34
    .line 35
    const-string p1, ";"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 42
    .line 43
    if-nez p2, :cond_0

    .line 44
    .line 45
    new-instance p2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 46
    .line 47
    invoke-direct {p2}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 51
    .line 52
    :cond_0
    const/4 p2, 0x0

    .line 53
    aget-object v1, p1, p2

    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingEffect:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    aget-object v2, p1, v1

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x2

    .line 65
    aget-object v3, p1, v3

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x3

    .line 72
    aget-object v4, p1, v4

    .line 73
    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/4 v5, 0x4

    .line 79
    aget-object v5, p1, v5

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const/4 v6, 0x5

    .line 86
    aget-object p1, p1, v6

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    iget-object v7, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingEffect:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v6, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    new-array v7, v1, [I

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    const/16 v8, 0x63

    .line 107
    .line 108
    if-eq v2, v8, :cond_1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    move v1, p1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-static {v8, v2, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    :goto_1
    aput v1, v7, p2

    .line 122
    .line 123
    int-to-float v1, v3

    .line 124
    const/high16 v3, 0x42c80000    # 100.0f

    .line 125
    .line 126
    div-float/2addr v1, v3

    .line 127
    const/high16 v3, 0x3f800000    # 1.0f

    .line 128
    .line 129
    sub-float/2addr v3, v1

    .line 130
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v4, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingWidth(ILandroid/content/Context;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    const-string v5, "EdgeLightingInfo : type="

    .line 147
    .line 148
    const-string v8, ",color="

    .line 149
    .line 150
    const-string v9, ",alpha="

    .line 151
    .line 152
    invoke-static {v5, v6, v8, v2, v9}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v5, ",width="

    .line 160
    .line 161
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v5, ",time="

    .line 168
    .line 169
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v5, ",colorValue="

    .line 176
    .line 177
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 191
    .line 192
    iput v6, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    .line 193
    .line 194
    iput-object v7, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    .line 195
    .line 196
    iput v3, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 197
    .line 198
    int-to-float v0, v1

    .line 199
    iput v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 200
    .line 201
    const/4 v0, -0x1

    .line 202
    iput v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 203
    .line 204
    int-to-long v0, v4

    .line 205
    iput-wide v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    .line 206
    .line 207
    iput-boolean p2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    .line 208
    .line 209
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_3

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    .line 221
    .line 222
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    .line 223
    .line 224
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    .line 226
    .line 227
    :cond_4
    return-void
.end method
