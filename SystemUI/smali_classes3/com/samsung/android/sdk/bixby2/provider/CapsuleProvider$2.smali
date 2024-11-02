.class public final Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

.field public final synthetic val$actionId:Ljava/lang/String;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

.field public final synthetic val$handler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

.field public final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$handler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$actionId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$params:Landroid/os/Bundle;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$callback:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$handler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;->executeAction()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
