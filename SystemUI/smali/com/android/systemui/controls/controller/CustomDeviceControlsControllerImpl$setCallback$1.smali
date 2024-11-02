.class public final Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->listingCallback:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;

    .line 6
    .line 7
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
