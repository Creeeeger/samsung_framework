.class public final Lcom/android/systemui/statusbar/KshPresenter$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-class v1, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, [Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/model/KshData;I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda1;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/util/List;

    .line 59
    .line 60
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/systemui/statusbar/model/KshDataUtils;->mDefaultIcons:Ljava/util/HashMap;

    .line 63
    .line 64
    iput-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance v2, Landroid/view/KeyboardShortcutGroup;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    const v4, 0x7f130a0e

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {v2, v0, v1, v3}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$3$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/KshPresenter$3$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 106
    .line 107
    iput-object p1, v0, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    .line 110
    .line 111
    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;

    .line 112
    .line 113
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshPresenter;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    return-void
.end method
