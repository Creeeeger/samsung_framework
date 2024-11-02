.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/WallpaperResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDelegateBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-$$Nest$minitBackgroundImageView(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDrawFinished()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreviewReady()V
    .locals 0

    .line 1
    return-void
.end method
