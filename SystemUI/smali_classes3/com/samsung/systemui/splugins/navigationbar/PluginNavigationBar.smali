.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.navigationbar.PLUGIN"
    version = 0x2328
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;,
        Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$DefaultImpls;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.navigationbar.PLUGIN"

.field public static final Companion:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;

.field public static final MAJOR_VERSION:I = 0x9

.field public static final MINOR_VERSION:I = 0x0

.field public static final VERSION:I = 0x2328


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;->$$INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->Companion:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getVersion()I
.end method

.method public abstract onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V
.end method

.method public abstract onDetachedFromWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V
.end method
