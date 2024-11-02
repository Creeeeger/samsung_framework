.class public final Lcom/android/systemui/statusbar/phone/ScrimStateLogger;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAlphas:[F

.field public final mCallback:Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;

.field public final mColors:[I

.field public mForceChanged:Z

.field public final mScrimViews:[Lcom/android/systemui/scrim/ScrimViewBase;

.field public mScrimVisibility:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mColors:[I

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mAlphas:[F

    .line 12
    .line 13
    new-array v0, v0, [Lcom/android/systemui/scrim/ScrimViewBase;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimViews:[Lcom/android/systemui/scrim/ScrimViewBase;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimVisibility:I

    .line 22
    .line 23
    aput-object p1, v0, v1

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object p2, v0, v2

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    aput-object p3, v0, v3

    .line 30
    .line 31
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;

    .line 32
    .line 33
    new-instance p4, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {p4, p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimStateLogger;I)V

    .line 36
    .line 37
    .line 38
    check-cast p1, Lcom/android/systemui/scrim/ScrimView;

    .line 39
    .line 40
    iput-object p4, p1, Lcom/android/systemui/scrim/ScrimView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    .line 41
    .line 42
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {p1, p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimStateLogger;I)V

    .line 45
    .line 46
    .line 47
    check-cast p2, Lcom/android/systemui/scrim/ScrimView;

    .line 48
    .line 49
    iput-object p1, p2, Lcom/android/systemui/scrim/ScrimView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    .line 50
    .line 51
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {p1, p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimStateLogger;I)V

    .line 54
    .line 55
    .line 56
    check-cast p3, Lcom/android/systemui/scrim/ScrimView;

    .line 57
    .line 58
    iput-object p1, p3, Lcom/android/systemui/scrim/ScrimView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final logScrimColor(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/phone/ScrimController$3;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 8
    .line 9
    iget v2, v2, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    .line 10
    .line 11
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v3, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimVisibility:I

    .line 21
    .line 22
    if-eq v3, v2, :cond_1

    .line 23
    .line 24
    :goto_0
    move v3, v5

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v3, v4

    .line 27
    :goto_1
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimViews:[Lcom/android/systemui/scrim/ScrimViewBase;

    .line 28
    .line 29
    if-nez v3, :cond_8

    .line 30
    .line 31
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    iget v3, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimVisibility:I

    .line 39
    .line 40
    if-eq v3, v2, :cond_3

    .line 41
    .line 42
    :goto_2
    move v3, v5

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move v3, v4

    .line 45
    :goto_3
    if-eqz v3, :cond_4

    .line 46
    .line 47
    goto :goto_5

    .line 48
    :cond_4
    array-length v3, v6

    .line 49
    move v7, v4

    .line 50
    move v8, v7

    .line 51
    :goto_4
    if-ge v7, v3, :cond_7

    .line 52
    .line 53
    aget-object v9, v6, v7

    .line 54
    .line 55
    check-cast v9, Lcom/android/systemui/scrim/ScrimView;

    .line 56
    .line 57
    invoke-virtual {v9}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mColors:[I

    .line 62
    .line 63
    aget v11, v11, v8

    .line 64
    .line 65
    if-ne v10, v11, :cond_6

    .line 66
    .line 67
    iget v9, v9, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    .line 68
    .line 69
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mAlphas:[F

    .line 70
    .line 71
    aget v10, v10, v8

    .line 72
    .line 73
    cmpl-float v9, v9, v10

    .line 74
    .line 75
    if-eqz v9, :cond_5

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 79
    .line 80
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    :goto_5
    move v0, v5

    .line 84
    goto :goto_6

    .line 85
    :cond_7
    move v0, v4

    .line 86
    :goto_6
    if-eqz v0, :cond_9

    .line 87
    .line 88
    if-eqz p1, :cond_9

    .line 89
    .line 90
    :cond_8
    aget-object v0, v6, v4

    .line 91
    .line 92
    aget-object v3, v6, v5

    .line 93
    .line 94
    const/4 v4, 0x2

    .line 95
    aget-object v4, v6, v4

    .line 96
    .line 97
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 98
    .line 99
    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 100
    .line 101
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    check-cast v0, Lcom/android/systemui/scrim/ScrimView;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    iget v6, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    .line 122
    .line 123
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-interface {v0}, Lcom/android/systemui/scrim/ScrimViewBase;->getVisibility()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    check-cast v3, Lcom/android/systemui/scrim/ScrimView;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    iget v0, v3, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    .line 146
    .line 147
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    invoke-interface {v3}, Lcom/android/systemui/scrim/ScrimViewBase;->getVisibility()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    check-cast v4, Lcom/android/systemui/scrim/ScrimView;

    .line 160
    .line 161
    invoke-virtual {v4}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    iget v0, v4, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    invoke-interface {v4}, Lcom/android/systemui/scrim/ScrimViewBase;->getVisibility()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v16

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v17

    .line 187
    filled-new-array/range {v7 .. v17}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string/jumbo v2, "updateScrimColor main=0x%x front=0x%x|%f|%d noti=0x%x|%f|%d behind=0x%x|%f|%d vis=%d"

    .line 192
    .line 193
    .line 194
    invoke-static {v5, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    const-string v1, "ScrimController"

    .line 202
    .line 203
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_9
    return-void
.end method
