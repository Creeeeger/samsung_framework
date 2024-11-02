.class public Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;


# direct methods
.method public static synthetic $r8$lambda$RsaaXJZPcMExiYYuM-9AAhBMW_w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/DeviceController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DeviceControlActionInteractor"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 11
    .line 12
    return-void
.end method

.method private static synthetic lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private matchAction(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method


# virtual methods
.method public getSupportingActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/List;

    .line 28
    .line 29
    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "loadStateful in DeviceContorlActionInteractor action="

    const-string v1, "DeviceControlActionInteractor"

    .line 2
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 5
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 8
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 9
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 13
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 16
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 21
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 24
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 27
    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 28
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/DeviceController;->hasFlashLight()Z

    move-result p1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isFlashLightEnabled()Z

    move-result v0

    .line 30
    new-instance v3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 31
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 32
    invoke-direct {v3, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 33
    :goto_0
    iput v1, v3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 34
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 36
    iput-object p0, v3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 37
    new-instance p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    .line 38
    iput-object p0, v3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 39
    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 40
    :cond_4
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/DeviceController;->hasFlashLight()Z

    move-result p1

    .line 42
    new-instance v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 43
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 44
    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    .line 45
    :goto_1
    iput v1, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 46
    new-instance p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightLevel()I

    move-result p0

    int-to-float v5, p0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    .line 48
    iput-object p1, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 50
    :cond_6
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isAutoRotationEnabled()Z

    move-result p0

    .line 52
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 53
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 54
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iput v1, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 56
    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    .line 57
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 59
    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 60
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 61
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 64
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 65
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 67
    :cond_8
    sget-object p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 68
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 69
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 72
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 73
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 7

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadStateful in DeviceContorlActionInteractor(with CommandAction) action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cmdAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DeviceControlActionInteractor"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 93
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 94
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 97
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 101
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 102
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 105
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 106
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 109
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 110
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 113
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 116
    :cond_2
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x2

    if-eqz p3, :cond_4

    .line 117
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/DeviceController;->hasFlashLight()Z

    move-result p1

    .line 118
    iget-object p3, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p3}, Lcom/android/systemui/bixby2/controller/DeviceController;->isFlashLightEnabled()Z

    move-result p3

    .line 119
    new-instance v2, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 120
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 121
    invoke-direct {v2, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 122
    :goto_0
    iput v0, v2, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 123
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 125
    iput-object p0, v2, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 126
    new-instance p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    .line 127
    iput-object p0, v2, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 128
    invoke-virtual {v2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 129
    :cond_4
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 130
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/DeviceController;->hasFlashLight()Z

    move-result p1

    .line 131
    new-instance p3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 132
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 133
    invoke-direct {p3, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 134
    :goto_1
    iput v0, p3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 135
    new-instance p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40a00000    # 5.0f

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightLevel()I

    move-result p0

    int-to-float v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    .line 137
    iput-object p1, p3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 138
    invoke-virtual {p3}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 139
    :cond_6
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 140
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isAutoRotationEnabled()Z

    move-result p0

    .line 141
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 142
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 143
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    iput v0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 145
    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    .line 146
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 148
    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 149
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 150
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 153
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 156
    :cond_8
    sget-object p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 157
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 158
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 161
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 162
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    const-string p2, "invalid_action"

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    check-cast p2, Lcom/samsung/android/sdk/command/action/FloatAction;

    .line 34
    .line 35
    iget p2, p2, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    .line 36
    .line 37
    float-to-int p2, p2

    .line 38
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/controller/DeviceController;->setFlashlightWithLevel(I)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p3, :cond_4

    .line 45
    .line 46
    iget v0, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 47
    .line 48
    iget-object p2, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 49
    .line 50
    move-object v2, p3

    .line 51
    check-cast v2, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 52
    .line 53
    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    check-cast p2, Lcom/samsung/android/sdk/command/action/BooleanAction;

    .line 58
    .line 59
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-boolean p2, p2, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/controller/DeviceController;->setFlashlight(Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-eqz p3, :cond_4

    .line 80
    .line 81
    iget v0, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 82
    .line 83
    iget-object p2, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 84
    .line 85
    move-object v2, p3

    .line 86
    check-cast v2, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 87
    .line 88
    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/controller/DeviceController;->setAutoRotate(Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    if-eqz p3, :cond_4

    .line 111
    .line 112
    iget v0, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 113
    .line 114
    iget-object p2, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 115
    .line 116
    move-object v2, p3

    .line 117
    check-cast v2, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 118
    .line 119
    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_0
    const-string/jumbo p2, "success"

    .line 123
    .line 124
    .line 125
    :goto_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->turnOffDevice(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    if-eqz p3, :cond_9

    .line 145
    .line 146
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 147
    .line 148
    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_5
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->restartDevice(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    if-eqz p3, :cond_9

    .line 173
    .line 174
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 175
    .line 176
    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->turnOffScreen(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    if-eqz p3, :cond_9

    .line 200
    .line 201
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 202
    .line 203
    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_7
    sget-object p2, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_8

    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 220
    .line 221
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->setLandscapeMode(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    if-eqz p3, :cond_9

    .line 228
    .line 229
    iget p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 232
    .line 233
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 234
    .line 235
    invoke-virtual {p3, p1, p0}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_8
    sget-object p2, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-eqz p1, :cond_9

    .line 250
    .line 251
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    .line 252
    .line 253
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->setPortraitMode(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    if-eqz p3, :cond_9

    .line 260
    .line 261
    iget p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 264
    .line 265
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 266
    .line 267
    invoke-virtual {p3, p1, p0}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_9
    :goto_2
    return-void
.end method
