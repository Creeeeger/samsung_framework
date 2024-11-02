.class public final Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/controller/CustomDeviceControlsController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

.field public final context:Landroid/content/Context;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field public final listingCallback:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/controls/ui/util/SALogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 15
    .line 16
    new-instance p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->listingCallback:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;

    .line 22
    .line 23
    return-void
.end method

.method public static addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 2
    .line 3
    const-string v1, "SeedingCompleted"

    .line 4
    .line 5
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final start()V
    .locals 2

    .line 1
    const-string v0, "CustomDeviceControlsControllerImpl"

    .line 2
    .line 3
    const-string/jumbo v1, "start()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 14
    .line 15
    sget-object v1, Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchDevices;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->context:Landroid/content/Context;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 23
    .line 24
    check-cast p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startCustomControlsActivity(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
