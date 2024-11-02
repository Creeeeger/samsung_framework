.class public final Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 12
    .line 13
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mStartPosition:I

    .line 14
    .line 15
    int-to-long v4, p1

    .line 16
    const-wide/16 v6, 0x3e8

    .line 17
    .line 18
    mul-long/2addr v4, v6

    .line 19
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x2d0

    .line 30
    .line 31
    if-ge v0, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lt v0, v1, :cond_1

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    const v1, 0x3e99999a    # 0.3f

    .line 45
    .line 46
    .line 47
    mul-float/2addr v0, v1

    .line 48
    float-to-int v0, v0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-float v2, v2

    .line 54
    mul-float/2addr v2, v1

    .line 55
    float-to-int v1, v2

    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    .line 63
    .line 64
    move-object p1, v0

    .line 65
    :cond_1
    if-eqz p1, :cond_2

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    .line 69
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "createThumbnail mThumbnail: "

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string p1, "KeyguardVideoWallpaper"

    .line 91
    .line 92
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "onPostExecute: mDrawable = "

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "KeyguardVideoWallpaper"

    .line 63
    .line 64
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method
