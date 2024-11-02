.class Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field mPackage:Ljava/lang/String;

.field mPlugin:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPluginContext:Landroid/content/Context;

.field private final mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClass(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPluginContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/samsung/systemui/splugins/SVersionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 13
    .line 14
    return-void
.end method
