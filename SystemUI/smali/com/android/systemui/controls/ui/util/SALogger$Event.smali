.class public abstract Lcom/android/systemui/controls/ui/util/SALogger$Event;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>()V

    return-void
.end method

.method public static getTemplateType(Lcom/android/systemui/controls/ui/Behavior;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/systemui/controls/ui/StatusBehavior;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    instance-of p0, p0, Landroid/service/controls/templates/StatelessTemplate;

    .line 17
    .line 18
    if-eqz p0, :cond_5

    .line 19
    .line 20
    const-string p0, "Stateless toggle"

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    instance-of v0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const-string p0, "Toggle"

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    instance-of v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    check-cast p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 35
    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    const-string p0, "Toggle with slider"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const-string p0, "Range"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    instance-of v0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    check-cast p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 53
    .line 54
    if-eqz p0, :cond_5

    .line 55
    .line 56
    invoke-static {p0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;->getTemplateType(Lcom/android/systemui/controls/ui/Behavior;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_1

    .line 61
    :cond_5
    :goto_0
    const-string p0, "Tap to open"

    .line 62
    .line 63
    :goto_1
    return-object p0
.end method


# virtual methods
.method public abstract sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
.end method
