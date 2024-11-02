.class final synthetic Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x2

    .line 2
    const-class v3, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 3
    .line 4
    const-string/jumbo v4, "showNonMainView"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v5, "showNonMainView(Ljava/util/List;Ljava/util/List;)V"

    .line 8
    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v0, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    check-cast p2, Ljava/util/List;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 8
    .line 9
    sget p1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string/jumbo p1, "showNonMainView"

    .line 15
    .line 16
    .line 17
    const-string v0, "CustomControlsUiControllerImpl"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 29
    .line 30
    const v1, 0x7f0a0417

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    const-string/jumbo p1, "showNoAppView()"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const-class p1, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object v0, v2

    .line 62
    :goto_0
    instance-of v3, v0, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    move-object v2, v0

    .line 67
    check-cast v2, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 68
    .line 69
    :cond_1
    if-nez v2, :cond_2

    .line 70
    .line 71
    new-instance v2, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 72
    .line 73
    invoke-direct {v2, p2}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;-><init>(Lcom/android/systemui/controls/ui/util/SALogger;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 77
    .line 78
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 79
    .line 80
    if-eqz p2, :cond_9

    .line 81
    .line 82
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 83
    .line 84
    invoke-direct {v0, p2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 88
    .line 89
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commitAllowingStateLoss()I

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const-string/jumbo p1, "showNoFavoriteView()"

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    const-class p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 112
    .line 113
    if-nez v0, :cond_8

    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    move-object v0, v2

    .line 125
    :goto_1
    instance-of v3, v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 126
    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    move-object v2, v0

    .line 130
    check-cast v2, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 131
    .line 132
    :cond_6
    if-nez v2, :cond_7

    .line 133
    .line 134
    new-instance v2, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 139
    .line 140
    invoke-direct {v2, v3, p2, v0}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    iput-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 144
    .line 145
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 146
    .line 147
    if-eqz p2, :cond_9

    .line 148
    .line 149
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 150
    .line 151
    invoke-direct {v0, p2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 152
    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 155
    .line 156
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commitAllowingStateLoss()I

    .line 163
    .line 164
    .line 165
    :cond_9
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p0
.end method
