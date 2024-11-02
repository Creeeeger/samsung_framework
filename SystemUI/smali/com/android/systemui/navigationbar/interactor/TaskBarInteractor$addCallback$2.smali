.class public final Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $action:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->$action:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->$action:Ljava/lang/Runnable;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const-class v2, Landroid/os/UserManager;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/os/UserManager;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    :goto_1
    iput-boolean p1, v1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Z

    .line 64
    .line 65
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 68
    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 76
    .line 77
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Z

    .line 78
    .line 79
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "Receive "

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, " userUnlocked="

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p0, " for userid="

    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const-string p2, "TaskBarInteractor"

    .line 114
    .line 115
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method
