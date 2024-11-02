.class public final synthetic Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iput p3, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget v5, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$2:I

    .line 12
    .line 13
    check-cast p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 14
    .line 15
    sget p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget v3, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    .line 21
    .line 22
    iget v4, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeStackBlur(Landroid/graphics/Bitmap;IIII)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    iget-object v7, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    .line 30
    .line 31
    iget-object v8, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    iget v11, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$2:I

    .line 34
    .line 35
    check-cast p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 36
    .line 37
    sget p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget v9, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    .line 43
    .line 44
    iget v10, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    .line 45
    .line 46
    const/4 v12, 0x1

    .line 47
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeStackBlur(Landroid/graphics/Bitmap;IIII)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    .line 54
    .line 55
    iget p0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$2:I

    .line 56
    .line 57
    check-cast p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    .line 58
    .line 59
    sget v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget v2, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    .line 65
    .line 66
    iget p1, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeSetHighLightFilter(Landroid/graphics/Bitmap;III)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
