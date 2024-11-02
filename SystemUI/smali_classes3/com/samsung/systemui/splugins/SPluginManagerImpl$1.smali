.class Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;ZLcom/samsung/systemui/splugins/SPluginInitializer;Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

.field final synthetic val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginInitializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/SPluginInitializer;->onPluginManagerInit()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
