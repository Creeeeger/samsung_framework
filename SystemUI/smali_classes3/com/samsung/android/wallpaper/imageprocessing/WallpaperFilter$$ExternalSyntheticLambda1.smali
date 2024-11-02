.class public final synthetic Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;->f$2:[I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda1;->f$2:[I

    .line 6
    .line 7
    check-cast p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 8
    .line 9
    sget v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v2, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    .line 15
    .line 16
    iget p1, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeSetGaussianNoise(Landroid/graphics/Bitmap;II[I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
