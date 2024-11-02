.class public final synthetic Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/DeviceControlTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DeviceControlTile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/DeviceControlTile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/DeviceControlTile;

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mListingCallback:Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    .line 12
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
