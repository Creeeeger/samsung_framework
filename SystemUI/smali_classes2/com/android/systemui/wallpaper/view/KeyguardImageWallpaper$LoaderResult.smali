.class public final Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final fromPluginLock:Z

.field public final success:Z

.field public final wallpaerPath:Ljava/lang/String;

.field public final which:I


# direct methods
.method public constructor <init>(ZLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success:Z

    .line 3
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    .line 5
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fromPluginLock:Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->wallpaerPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLandroid/graphics/Bitmap;ZLjava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success:Z

    .line 9
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 10
    iput p5, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    .line 11
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fromPluginLock:Z

    .line 12
    iput-object p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->wallpaerPath:Ljava/lang/String;

    return-void
.end method
