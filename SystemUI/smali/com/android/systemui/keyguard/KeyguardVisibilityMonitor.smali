.class public final Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public curVisibility:I

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final isExpandedChangedListeners:Ljava/util/List;

.field public final keyguardStateController$delegate:Lkotlin/Lazy;

.field public listener:Ljava/util/function/Consumer;

.field public needsExpand:Z

.field public panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

.field public panelState:I

.field public final panelStateChangedListeners:Ljava/util/List;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeExpansionStateManagerLazy:Ldagger/Lazy;

.field public final visibilityChangedListeners:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->shadeExpansionStateManagerLazy:Ldagger/Lazy;

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    .line 14
    .line 15
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$keyguardStateController$2;

    .line 16
    .line 17
    invoke-direct {p1, p4}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$keyguardStateController$2;-><init>(Ldagger/Lazy;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->keyguardStateController$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isExpandedChangedListeners:Ljava/util/List;

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelStateChangedListeners:Ljava/util/List;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final cancelExecToken(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "KeyguardVisible"

    .line 8
    .line 9
    const-string v1, "cancel"

    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->keyguardStateController$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 8
    .line 9
    return-object p0
.end method

.method public final panelLog(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;Ljava/lang/Integer;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    .line 14
    .line 15
    :goto_0
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 18
    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    move-object v0, v1

    .line 32
    :goto_1
    if-eqz p1, :cond_4

    .line 33
    .line 34
    iget-boolean v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_2

    .line 41
    :cond_4
    move-object v2, v1

    .line 42
    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x1

    .line 47
    if-eqz v0, :cond_8

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    iget-boolean v0, v0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_3

    .line 60
    :cond_5
    move-object v0, v1

    .line 61
    :goto_3
    if-eqz p1, :cond_6

    .line 62
    .line 63
    iget-boolean v3, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_4

    .line 70
    :cond_6
    move-object v3, v1

    .line 71
    :goto_4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    .line 78
    .line 79
    if-eq v0, p2, :cond_7

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_7
    const/4 v0, 0x0

    .line 83
    goto :goto_6

    .line 84
    :cond_8
    :goto_5
    move v0, v2

    .line 85
    :goto_6
    if-eqz v0, :cond_12

    .line 86
    .line 87
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    .line 88
    .line 89
    const-string v0, "OPEN"

    .line 90
    .line 91
    const/4 v3, 0x2

    .line 92
    const-string v4, "OPENING"

    .line 93
    .line 94
    const-string v5, "CLOSED"

    .line 95
    .line 96
    if-eqz p0, :cond_b

    .line 97
    .line 98
    if-eq p0, v2, :cond_a

    .line 99
    .line 100
    if-eq p0, v3, :cond_9

    .line 101
    .line 102
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    goto :goto_7

    .line 107
    :cond_9
    move-object p0, v0

    .line 108
    goto :goto_7

    .line 109
    :cond_a
    move-object p0, v4

    .line 110
    goto :goto_7

    .line 111
    :cond_b
    move-object p0, v5

    .line 112
    :goto_7
    if-eqz p2, :cond_d

    .line 113
    .line 114
    if-eq p2, v2, :cond_c

    .line 115
    .line 116
    if-eq p2, v3, :cond_e

    .line 117
    .line 118
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    goto :goto_8

    .line 123
    :cond_c
    move-object v0, v4

    .line 124
    goto :goto_8

    .line 125
    :cond_d
    move-object v0, v5

    .line 126
    :cond_e
    :goto_8
    if-eqz p1, :cond_f

    .line 127
    .line 128
    iget-boolean p2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    .line 129
    .line 130
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    goto :goto_9

    .line 135
    :cond_f
    move-object p2, v1

    .line 136
    :goto_9
    if-eqz p1, :cond_10

    .line 137
    .line 138
    iget-boolean v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    .line 139
    .line 140
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    goto :goto_a

    .line 145
    :cond_10
    move-object v2, v1

    .line 146
    :goto_a
    if-eqz p1, :cond_11

    .line 147
    .line 148
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 149
    .line 150
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_11
    const-string p1, "go panelState: "

    .line 155
    .line 156
    const-string v3, " -> "

    .line 157
    .line 158
    const-string v4, " tracking="

    .line 159
    .line 160
    invoke-static {p1, p0, v3, v0, v4}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p1, ", expanded="

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string p1, ", fraction="

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    const-string p1, "KeyguardVisible"

    .line 188
    .line 189
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :cond_12
    return-void
.end method

.method public final registerMonitor(Landroid/view/View;Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$1;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->listener:Ljava/util/function/Consumer;

    .line 2
    .line 3
    instance-of p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$2;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$2;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->shadeExpansionStateManagerLazy:Ldagger/Lazy;

    .line 36
    .line 37
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 42
    .line 43
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$1;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$1;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 49
    .line 50
    .line 51
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$2;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$2;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 62
    .line 63
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$4;

    .line 64
    .line 65
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$4;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x3

    .line 69
    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->listener:Ljava/util/function/Consumer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final start(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "start needsExpand="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "KeyguardVisible"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    .line 23
    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 28
    .line 29
    const-wide/16 v0, 0x5dc

    .line 30
    .line 31
    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 36
    .line 37
    return-void
.end method

.method public final visibilityChanged(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "visibilityChanged "

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " -> "

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "KeyguardVisible"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/util/function/IntConsumer;

    .line 55
    .line 56
    invoke-interface {v1, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    .line 61
    .line 62
    return-void
.end method
