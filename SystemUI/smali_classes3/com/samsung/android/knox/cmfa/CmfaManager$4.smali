.class public final Lcom/samsung/android/knox/cmfa/CmfaManager$4;
.super Lcom/samsung/android/knox/cmfa/IEventListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/cmfa/CmfaManager;->registerListener(Lcom/samsung/android/knox/cmfa/IAuthEventListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/cmfa/CmfaManager;

.field public final synthetic val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->this$0:Lcom/samsung/android/knox/cmfa/CmfaManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/IEventListener$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/IAuthEventListener;->onFail(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onStateUpdate(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/cmfa/IAuthEventListener;->onStateUpdate(ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/IAuthEventListener;->onSuccess()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
