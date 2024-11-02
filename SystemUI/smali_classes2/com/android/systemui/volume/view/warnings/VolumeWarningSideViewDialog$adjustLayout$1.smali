.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $bottomMargin:F

.field public final synthetic $container:Landroid/view/ViewGroup;

.field public final synthetic $coverTextDirection:I

.field public final synthetic $rightMargin:F

.field public final synthetic $scale:F

.field public final synthetic $screenWidth:I

.field public final synthetic this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;ILandroid/view/ViewGroup;IFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$coverTextDirection:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 6
    .line 7
    iput p4, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$screenWidth:I

    .line 8
    .line 9
    iput p5, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    .line 10
    .line 11
    iput p6, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$rightMargin:F

    .line 12
    .line 13
    iput p7, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$bottomMargin:F

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$coverTextDirection:I

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 37
    .line 38
    const/high16 v1, 0x42b40000    # 90.0f

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 45
    .line 46
    const/high16 v1, 0x43870000    # 270.0f

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 49
    .line 50
    .line 51
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 52
    .line 53
    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$screenWidth:I

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    div-float/2addr v1, v2

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    int-to-float v3, v3

    .line 62
    div-float/2addr v3, v2

    .line 63
    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    .line 64
    .line 65
    mul-float/2addr v3, v2

    .line 66
    sub-float/2addr v1, v3

    .line 67
    iget v3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$rightMargin:F

    .line 68
    .line 69
    mul-float/2addr v3, v2

    .line 70
    sub-float/2addr v1, v3

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 75
    .line 76
    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$bottomMargin:F

    .line 77
    .line 78
    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    .line 79
    .line 80
    mul-float/2addr v1, v2

    .line 81
    neg-float v1, v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/high16 v3, 0x43340000    # 180.0f

    .line 104
    .line 105
    if-eq v0, v1, :cond_5

    .line 106
    .line 107
    const/4 v1, 0x3

    .line 108
    if-eq v0, v1, :cond_3

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$coverTextDirection:I

    .line 112
    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 121
    .line 122
    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$screenWidth:I

    .line 123
    .line 124
    int-to-float v1, v1

    .line 125
    div-float/2addr v1, v2

    .line 126
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    int-to-float v3, v3

    .line 131
    div-float/2addr v3, v2

    .line 132
    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    .line 133
    .line 134
    mul-float/2addr v3, v2

    .line 135
    sub-float/2addr v1, v3

    .line 136
    iget v3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$rightMargin:F

    .line 137
    .line 138
    mul-float/2addr v3, v2

    .line 139
    sub-float/2addr v1, v3

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 144
    .line 145
    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$bottomMargin:F

    .line 146
    .line 147
    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    .line 148
    .line 149
    mul-float/2addr v1, v2

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    iget v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$coverTextDirection:I

    .line 155
    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 161
    .line 162
    .line 163
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 164
    .line 165
    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$screenWidth:I

    .line 166
    .line 167
    int-to-float v1, v1

    .line 168
    div-float/2addr v1, v2

    .line 169
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    int-to-float v3, v3

    .line 174
    div-float/2addr v3, v2

    .line 175
    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    .line 176
    .line 177
    mul-float/2addr v3, v2

    .line 178
    sub-float/2addr v1, v3

    .line 179
    iget v3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$rightMargin:F

    .line 180
    .line 181
    mul-float/2addr v3, v2

    .line 182
    sub-float/2addr v1, v3

    .line 183
    neg-float v1, v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 188
    .line 189
    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$bottomMargin:F

    .line 190
    .line 191
    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    .line 192
    .line 193
    mul-float/2addr v1, v2

    .line 194
    neg-float v1, v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 196
    .line 197
    .line 198
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    .line 199
    .line 200
    const/high16 v0, 0x3f800000    # 1.0f

    .line 201
    .line 202
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 203
    .line 204
    .line 205
    return-void
.end method
