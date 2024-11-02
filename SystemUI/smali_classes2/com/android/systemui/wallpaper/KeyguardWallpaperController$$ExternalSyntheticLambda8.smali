.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;->f$2:Z

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;->f$3:Z

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchWallpaperTypeChanged(IZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
