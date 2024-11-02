.class public final Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->start(Ljava/util/Map;Lcom/samsung/android/knox/cmfa/IAuthFactorListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/knox/cmfa/AuthFactorService$1;

.field public final synthetic val$map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService$1;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;->this$1:Lcom/samsung/android/knox/cmfa/AuthFactorService$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;->val$map:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;->this$1:Lcom/samsung/android/knox/cmfa/AuthFactorService$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;->val$map:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/cmfa/AuthFactorService;->onFactorStart(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
