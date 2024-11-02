.class public final Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBlurRadius:F

.field public mHighlightAmount:F

.field public mNoiseValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mBlurRadius:F

    .line 3
    iput v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mNoiseValue:F

    .line 4
    iput v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mHighlightAmount:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mBlurRadius:F

    .line 7
    iput v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mNoiseValue:F

    .line 8
    iput v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mHighlightAmount:F

    const-string v0, "highlight_amount"

    const-string v1, "noise_value"

    const-string v2, "blur_radius"

    const-string v3, "WallpaperFilter"

    if-nez p1, :cond_0

    .line 9
    sget p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    const-string p0, "decode: null data"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mBlurRadius:F

    .line 13
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mNoiseValue:F

    .line 15
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ImageFilterParams;->mHighlightAmount:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    sget p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "decode : e="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
