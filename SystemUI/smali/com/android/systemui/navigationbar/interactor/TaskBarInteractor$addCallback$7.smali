.class public final Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic $action:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->$action:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0x32edda8b

    .line 6
    .line 7
    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p2, "android.app.role.HOME"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->updateHomeStatus()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput-boolean p2, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->isDefaultHome:Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 28
    .line 29
    iget-object p2, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 30
    .line 31
    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->isDefaultHome:Z

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "OnRoleHoldersChangedListener: defaultHome: "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "TaskBarInteractor"

    .line 48
    .line 49
    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->$action:Ljava/lang/Runnable;

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method
