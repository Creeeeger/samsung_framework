.class public final Lcom/samsung/android/sdk/command/provider/CommandProvider$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;


# instance fields
.field public final synthetic val$bundle:Landroid/os/Bundle;

.field public final synthetic val$commandId:Ljava/lang/String;

.field public final synthetic val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;Landroid/os/Bundle;Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$commandId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onActionFinished(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "response_code"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string p1, "response_message"

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$commandId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {p1, p0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "command"

    .line 28
    .line 29
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
