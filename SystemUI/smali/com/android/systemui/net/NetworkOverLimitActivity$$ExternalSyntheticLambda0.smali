.class public final synthetic Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

.field public final synthetic f$1:Landroid/net/NetworkTemplate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkTemplate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkTemplate;

    .line 4
    .line 5
    sget p2, Lcom/android/systemui/net/NetworkOverLimitActivity;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo p1, "netpolicy"

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string p1, "NetworkOverLimitActivity"

    .line 27
    .line 28
    const-string/jumbo p2, "problem snoozing network policy"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
