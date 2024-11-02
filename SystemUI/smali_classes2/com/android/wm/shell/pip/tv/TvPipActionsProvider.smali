.class public final Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# instance fields
.field public final mActionsList:Ljava/util/List;

.field public final mAppActions:Ljava/util/List;

.field public final mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

.field public final mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

.field public final mListeners:Ljava/util/List;

.field public final mMediaActions:Ljava/util/List;

.field public final mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 26
    .line 27
    new-instance v9, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v9, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 33
    .line 34
    new-instance v10, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const v4, 0x7f130ca0

    .line 38
    .line 39
    .line 40
    const v5, 0x7f080d4a

    .line 41
    .line 42
    .line 43
    const-string v6, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    .line 44
    .line 45
    move-object v2, v10

    .line 46
    move-object v7, p1

    .line 47
    move-object v8, p3

    .line 48
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance v10, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    const v4, 0x7f130c9c

    .line 58
    .line 59
    .line 60
    const v5, 0x7f080d47

    .line 61
    .line 62
    .line 63
    const-string v6, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    .line 64
    .line 65
    move-object v2, v10

    .line 66
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 67
    .line 68
    .line 69
    iput-object v10, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 70
    .line 71
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v10, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 75
    .line 76
    const/4 v3, 0x2

    .line 77
    const v4, 0x7f130ca4

    .line 78
    .line 79
    .line 80
    const v5, 0x7f080d4b

    .line 81
    .line 82
    .line 83
    const-string v6, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    .line 84
    .line 85
    move-object v2, v10

    .line 86
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance v10, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 93
    .line 94
    const/4 v3, 0x3

    .line 95
    const v4, 0x7f130c9d

    .line 96
    .line 97
    .line 98
    const v5, 0x7f080d48

    .line 99
    .line 100
    .line 101
    const-string v6, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    .line 102
    .line 103
    move-object v2, v10

    .line 104
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 105
    .line 106
    .line 107
    iput-object v10, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 108
    .line 109
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p2, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-nez v3, :cond_0

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda0;->onMediaActionsChanged(Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public final executeAction(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;->executeAction(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final notifyActionsChanged(III)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;->onActionsChanged(III)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public onMediaActionsChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    .line 7
    const-string v1, "TvPipActionsProvider"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x25535887

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "%s: onMediaActionsChanged()"

    .line 18
    .line 19
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/app/RemoteAction;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateCustomActions(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public setAppActions(Ljava/util/List;Landroid/app/RemoteAction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 12
    .line 13
    invoke-direct {v1, v2, p2, v3}, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;-><init>(ILandroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/app/RemoteAction;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-static {v1, p2}, Lcom/android/wm/shell/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    check-cast v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateCustomActions(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final updateCustomActions(Ljava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move-object p1, v0

    .line 28
    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-long v2, v0

    .line 38
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "TvPipActionsProvider"

    .line 45
    .line 46
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const v3, 0x93e3712

    .line 51
    .line 52
    .line 53
    const-string v4, "%s: replaceCustomActions, count: %d"

    .line 54
    .line 55
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 59
    .line 60
    check-cast v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x0

    .line 67
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/wm/shell/pip/tv/TvPipAction;

    .line 78
    .line 79
    iget v4, v4, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 80
    .line 81
    if-ne v4, v1, :cond_3

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda1;

    .line 87
    .line 88
    invoke-direct {v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 92
    .line 93
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Landroid/app/RemoteAction;

    .line 114
    .line 115
    new-instance v6, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;

    .line 116
    .line 117
    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 118
    .line 119
    invoke-direct {v6, v1, v5, v7}, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;-><init>(ILandroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/4 v1, 0x2

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 128
    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    sub-int/2addr v0, v3

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public updateExpansionEnabled(Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "TvPipActionsProvider"

    .line 12
    .line 13
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    const-string v3, "%s: updateExpansionState, enabled: %b"

    .line 20
    .line 21
    const v4, -0x7ecdc621

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 28
    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, -0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x1

    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    .line 42
    move v6, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v6, v4

    .line 45
    :goto_0
    if-eqz p1, :cond_2

    .line 46
    .line 47
    if-nez v6, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v2, v0, -0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-nez p1, :cond_4

    .line 60
    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_1
    if-eqz p1, :cond_3

    .line 67
    .line 68
    move v3, v5

    .line 69
    :cond_3
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method public updatePipExpansionState(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "TvPipActionsProvider"

    .line 12
    .line 13
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    const-string v3, "%s: onPipExpansionToggled, expanded: %b"

    .line 20
    .line 21
    const v4, -0x1e59417d

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const v0, 0x7f130c9d

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const v0, 0x7f130c9f

    .line 34
    .line 35
    .line 36
    :goto_0
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const p1, 0x7f080d48

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const p1, 0x7f080d49

    .line 43
    .line 44
    .line 45
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 46
    .line 47
    iget v2, v1, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mTitleResource:I

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x1

    .line 51
    if-ne v0, v2, :cond_4

    .line 52
    .line 53
    iget v2, v1, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mIconResource:I

    .line 54
    .line 55
    if-eq p1, v2, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v2, v3

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :goto_2
    move v2, v4

    .line 61
    :goto_3
    iput v0, v1, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mTitleResource:I

    .line 62
    .line 63
    iput p1, v1, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mIconResource:I

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 68
    .line 69
    check-cast p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    .line 76
    .line 77
    .line 78
    :cond_5
    return-void
.end method
