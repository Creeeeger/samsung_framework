.class public Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG:Ljava/lang/String; = "ScreenControlActionInteractor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;


# direct methods
.method public static synthetic $r8$lambda$IVE0qHl7103OuYTNiGO57cwHEJU(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 7
    .line 8
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
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

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
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

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
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

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
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda0;-><init>(I)V

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
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ScreenControlActionInteractor"

    const-string/jumbo v1, "matched in ScreenContorlActionInteractor"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 5
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

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
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 13
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

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
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 21
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

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
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 29
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 32
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 35
    :cond_3
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 37
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 40
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 43
    :cond_4
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->getBrightnessBarInfo(Landroid/content/Context;)[I

    move-result-object p0

    .line 45
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 46
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 47
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iput v2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 49
    new-instance p2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-float v6, v0

    aget p0, p0, v2

    int-to-float v7, p0

    const/4 v8, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    .line 50
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 52
    :cond_5
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 54
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 57
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 60
    :cond_6
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isAutoBrightnessCoverEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isAutoBrightnessCoverEnabled = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 64
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 65
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iput v2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 67
    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    .line 68
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 70
    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 71
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 72
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 75
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 8

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadStateful in ScreenContorlActionInteractor(with CommandAction) action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cmdAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ScreenControlActionInteractor"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 81
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 82
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 85
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 89
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 90
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 93
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 96
    :cond_1
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 97
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 98
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 101
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 104
    :cond_2
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 105
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 106
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 109
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 110
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 112
    :cond_3
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 113
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 114
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 117
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 118
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 120
    :cond_4
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 121
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->getBrightnessBarInfo(Landroid/content/Context;)[I

    move-result-object p0

    .line 122
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 123
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 124
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iput v1, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 126
    new-instance p2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 p3, 0x0

    aget p3, p0, p3

    int-to-float v5, p3

    aget p0, p0, v1

    int-to-float v6, p0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    .line 127
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 129
    :cond_5
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 130
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 131
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 134
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 135
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 137
    :cond_6
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 138
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isAutoBrightnessCoverEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "isAutoBrightnessCoverEnabled = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 141
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 142
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    iput v1, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 144
    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    .line 145
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 147
    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 148
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 149
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 152
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 153
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "ScreenControlActionInteractor"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string/jumbo v3, "success"

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eq v0, v2, :cond_3

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-eq v0, v5, :cond_2

    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    if-eq v0, v6, :cond_1

    .line 19
    .line 20
    const/4 v6, 0x5

    .line 21
    if-eq v0, v6, :cond_0

    .line 22
    .line 23
    const-string v3, "invalid_action"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    check-cast p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    .line 27
    .line 28
    iget-object v4, p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    check-cast p2, Lcom/samsung/android/sdk/command/action/StringAction;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    check-cast p2, Lcom/samsung/android/sdk/command/action/FloatAction;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    iget p2, p2, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    .line 53
    .line 54
    float-to-int p2, p2

    .line 55
    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/bixby2/controller/ScreenController;->setBrightness(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget v5, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 60
    .line 61
    iget-object v3, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    check-cast p2, Lcom/samsung/android/sdk/command/action/BooleanAction;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v5, "bNewState = "

    .line 69
    .line 70
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean p2, p2, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    .line 74
    .line 75
    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/bixby2/controller/ScreenController;->setAutoBrightnessCover(Landroid/content/Context;Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget v5, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 99
    .line 100
    iget-object v3, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    :goto_0
    move v5, v2

    .line 104
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_c

    .line 109
    .line 110
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_5

    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->goToHomeScreen(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_5
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_6

    .line 142
    .line 143
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->pressBackKey(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_6
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_7

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->takeScreenShot(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_8

    .line 183
    .line 184
    new-instance p1, Landroid/os/Bundle;

    .line 185
    .line 186
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string/jumbo p2, "packageName"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string/jumbo p2, "share_screenshot    newJSONStringValue = "

    .line 196
    .line 197
    .line 198
    invoke-static {p2, v4, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 204
    .line 205
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->shareScreenShot(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_8
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_9

    .line 220
    .line 221
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 222
    .line 223
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 224
    .line 225
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->takeScreenShotUri(Landroid/content/Context;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_9
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 230
    .line 231
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-eqz p2, :cond_a

    .line 240
    .line 241
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 242
    .line 243
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    invoke-virtual {p1, p0, v4}, Lcom/android/systemui/bixby2/controller/ScreenController;->screenScroll(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_a
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 250
    .line 251
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_b

    .line 260
    .line 261
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    .line 264
    .line 265
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->closePanelScreen(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_b
    move v2, v5

    .line 270
    :goto_2
    if-eqz p3, :cond_c

    .line 271
    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string/jumbo p1, "responseCode = "

    .line 275
    .line 276
    .line 277
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string p1, ", responseMessage = "

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 299
    .line 300
    invoke-virtual {p3, v2, v3}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_c
    return-void
.end method
