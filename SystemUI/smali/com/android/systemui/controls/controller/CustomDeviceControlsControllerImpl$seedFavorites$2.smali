.class public final Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $prefs:Landroid/content/SharedPreferences;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/controls/controller/SeedResponse;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Controls seeded: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "CustomDeviceControlsControllerImpl"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p1, Lcom/android/systemui/controls/controller/SeedResponse;->accepted:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->$prefs:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    sget v3, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->$r8$clinit:I

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/systemui/controls/controller/SeedResponse;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2, p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string v0, "fireControlsUpdate()"

    .line 46
    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    .line 55
    .line 56
    check-cast p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string/jumbo v0, "removeCallback()"

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    iget-object v0, p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$removeCallback$1;

    .line 77
    .line 78
    invoke-direct {v1, p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2$1;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void
.end method
