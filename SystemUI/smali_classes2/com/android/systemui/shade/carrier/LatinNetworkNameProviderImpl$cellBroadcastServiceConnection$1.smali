.class public final Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const-string p0, "LatinNetworkNameProvider"

    .line 2
    .line 3
    const-string p1, "Binding died"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const-string p0, "LatinNetworkNameProvider"

    .line 2
    .line 3
    const-string p1, "Null binding"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "LatinNetworkNameProvider"

    .line 2
    .line 3
    const-string v0, "connected to CellBroadcastService"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastService:Landroid/telephony/ICellBroadcastService;

    .line 15
    .line 16
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "LatinNetworkNameProvider"

    .line 2
    .line 3
    const-string v0, "CellBroadcastService is disconnected unexpectedly"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastService:Landroid/telephony/ICellBroadcastService;

    .line 12
    .line 13
    return-void
.end method
