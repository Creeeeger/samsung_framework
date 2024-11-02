.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideProtoLogControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final shellCommandHandlerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideProtoLogControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideProtoLogControllerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    return-void
.end method

.method public static provideProtoLogController(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)Lcom/android/wm/shell/ProtoLogController;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/ProtoLogController;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/ProtoLogController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideProtoLogControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/wm/shell/sysui/ShellInit;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideProtoLogControllerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 16
    .line 17
    new-instance v1, Lcom/android/wm/shell/ProtoLogController;

    .line 18
    .line 19
    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/ProtoLogController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method
