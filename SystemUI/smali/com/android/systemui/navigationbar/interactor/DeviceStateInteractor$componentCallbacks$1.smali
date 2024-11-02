.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastCoverRotation:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastCoverRotation:I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->largeCoverRotationCallback:Ljava/util/function/Consumer;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .line 1
    return-void
.end method
