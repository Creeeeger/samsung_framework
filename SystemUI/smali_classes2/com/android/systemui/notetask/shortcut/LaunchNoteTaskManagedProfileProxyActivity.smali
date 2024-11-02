.class public final Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskController;Lcom/android/systemui/settings/UserTracker;Landroid/os/UserManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->userManager:Landroid/os/UserManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    .line 6
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->userManager:Landroid/os/UserManager;

    .line 30
    .line 31
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskController;->Companion:Lcom/android/systemui/notetask/NoteTaskController$Companion;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskController;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "Fail to find the work profile user."

    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 69
    .line 70
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/notetask/NoteTaskController;->showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
