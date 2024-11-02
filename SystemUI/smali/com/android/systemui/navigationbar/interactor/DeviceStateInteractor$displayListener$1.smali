.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 23
    .line 24
    .line 25
    iget p1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 26
    .line 27
    iget v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastRotation:I

    .line 28
    .line 29
    if-eq v0, p1, :cond_1

    .line 30
    .line 31
    iput p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastRotation:I

    .line 32
    .line 33
    const-class p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->forceRepositionCoverNavigationBar(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
