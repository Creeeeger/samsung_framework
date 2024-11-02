.class public final Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const-string v0, "TiltColorController"

    .line 4
    .line 5
    const-string v1, "onChange: setting changed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->requestDraw()V

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
