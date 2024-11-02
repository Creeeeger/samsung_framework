.class Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;


# direct methods
.method public static synthetic $r8$lambda$Lk7tbhafikA_bJQPcBiDxw23r80(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->lambda$onServiceConnected$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onServiceConnected$0()V
    .locals 2

    .line 1
    const-string v0, "SystemUIDesktop is died"

    .line 2
    .line 3
    const-string v1, "DesktopSystemUIBinder"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->stop()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$300(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "DeathRecipient-Reconnect"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$400(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onBindingDied name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "DesktopSystemUIBinder"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->stop()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$300(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const-string p1, "onBindingDied-Reconnect"

    .line 43
    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$400(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string p1, "DesktopSystemUIBinder"

    .line 2
    .line 3
    const-string v0, "SystemUIDesktop mDesktopBar.start RemoteException "

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {v1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$002(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 25
    .line 26
    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 44
    .line 45
    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p2, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setDesktopBarCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .line 57
    .line 58
    :try_start_1
    const-string p2, "Start mDesktopBar"

    .line 59
    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 64
    .line 65
    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p2

    .line 74
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_1
    move-exception p2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "SystemUIDesktop linkToDeath RemoteException "

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 123
    .line 124
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$200(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_1

    .line 137
    .line 138
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;

    .line 143
    .line 144
    invoke-interface {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;->onServiceConnected()V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "DesktopSystemUIBinder"

    .line 2
    .line 3
    const-string v0, "onServiceDisconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->stop()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$200(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;->onServiceDisconnected()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
