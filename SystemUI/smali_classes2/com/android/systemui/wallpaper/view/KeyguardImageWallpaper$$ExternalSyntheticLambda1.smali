.class public final synthetic Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const-string v2, "TiltColorController"

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "stop"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {v1, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setTiltSettingObserver(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAllAnimations()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "start"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setTiltSettingObserver(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
