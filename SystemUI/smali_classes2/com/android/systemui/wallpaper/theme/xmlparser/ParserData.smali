.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field public final mApkResources:Landroid/content/res/Resources;

.field public mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field public final mContext:Landroid/content/Context;

.field public mDeviceDensity:F

.field public mDeviceHeight:F

.field public mDeviceWidth:F

.field public mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

.field public mImageViewHeight:I

.field public mImageViewWidth:I

.field public final mIsPreview:Z

.field public mIsScaled:Z

.field public mIsStartTag:Z

.field public mIsWallpaper:Z

.field public mMetricsHeight:I

.field public mMetricsWidth:I

.field public mPackageHeight:F

.field public mPackageWidth:F

.field public final mPkgName:Ljava/lang/String;

.field public final mRootView:Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

.field public mScaledDx:F

.field public mScaledDy:F

.field public mScaledRatio:F

.field public final mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

.field public mXpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;IIZILcom/android/systemui/wallpaper/WallpaperResultCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x44200000    # 640.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    .line 7
    .line 8
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    .line 9
    .line 10
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 13
    .line 14
    .line 15
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    .line 18
    .line 19
    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    .line 21
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    .line 22
    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    .line 25
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 29
    .line 30
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    .line 31
    .line 32
    const/4 v0, -0x2

    .line 33
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    .line 34
    .line 35
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    .line 44
    .line 45
    iput-boolean p7, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsPreview:Z

    .line 46
    .line 47
    iput-object p9, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 48
    .line 49
    const-string p1, "display"

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    const/4 p3, 0x0

    .line 60
    invoke-virtual {p1, p3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    .line 68
    .line 69
    new-instance p3, Landroid/view/DisplayInfo;

    .line 70
    .line 71
    invoke-direct {p3}, Landroid/view/DisplayInfo;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 75
    .line 76
    .line 77
    iget p1, p3, Landroid/view/DisplayInfo;->rotation:I

    .line 78
    .line 79
    iget p3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 80
    .line 81
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    .line 82
    .line 83
    iget p4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 84
    .line 85
    iput p4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    .line 86
    .line 87
    const/4 p9, 0x1

    .line 88
    if-le p3, p4, :cond_1

    .line 89
    .line 90
    if-eq p1, p9, :cond_0

    .line 91
    .line 92
    const/4 v0, 0x3

    .line 93
    if-ne p1, v0, :cond_1

    .line 94
    .line 95
    :cond_0
    iput p4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    .line 96
    .line 97
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    .line 98
    .line 99
    :cond_1
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    .line 100
    .line 101
    iget p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 112
    .line 113
    if-ne p8, p9, :cond_3

    .line 114
    .line 115
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 124
    .line 125
    const/4 p3, 0x2

    .line 126
    if-ne p1, p3, :cond_2

    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 137
    .line 138
    int-to-float p1, p1

    .line 139
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 159
    .line 160
    int-to-float p1, p1

    .line 161
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 170
    .line 171
    :goto_0
    int-to-float p3, p3

    .line 172
    div-float/2addr p1, p4

    .line 173
    float-to-int p1, p1

    .line 174
    sput p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 175
    .line 176
    div-float/2addr p3, p4

    .line 177
    float-to-int p1, p3

    .line 178
    sput p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    int-to-float p1, p1

    .line 182
    div-float/2addr p1, p4

    .line 183
    float-to-int p1, p1

    .line 184
    sput p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 185
    .line 186
    int-to-float p1, p3

    .line 187
    div-float/2addr p1, p4

    .line 188
    float-to-int p1, p1

    .line 189
    sput p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 190
    .line 191
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 200
    .line 201
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    .line 202
    .line 203
    if-eqz p7, :cond_5

    .line 204
    .line 205
    int-to-float p3, p5

    .line 206
    div-float/2addr p3, p1

    .line 207
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    .line 208
    .line 209
    int-to-float p3, p6

    .line 210
    div-float/2addr p3, p1

    .line 211
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    sget p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 215
    .line 216
    int-to-float p1, p1

    .line 217
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    .line 218
    .line 219
    sget p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 220
    .line 221
    int-to-float p1, p1

    .line 222
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    .line 223
    .line 224
    :goto_2
    new-instance p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 225
    .line 226
    invoke-direct {p1, p2}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 230
    .line 231
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 232
    .line 233
    invoke-direct {p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 237
    .line 238
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    .line 239
    .line 240
    invoke-direct {p1}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    .line 244
    .line 245
    return-void
.end method


# virtual methods
.method public final getDevicePixelX(F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    .line 5
    .line 6
    mul-float/2addr p1, p0

    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr p1, p0

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p0, p0

    .line 15
    return p0
.end method

.method public final getDevicePixelY(F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    .line 5
    .line 6
    mul-float/2addr p1, p0

    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr p1, p0

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p0, p0

    .line 15
    return p0
.end method
