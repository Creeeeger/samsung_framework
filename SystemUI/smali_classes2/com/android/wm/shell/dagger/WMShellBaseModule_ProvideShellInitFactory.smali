.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final mainExecutorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    return-void
.end method

.method public static provideShellInit(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/sysui/ShellInit;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sysui/ShellInit;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 8
    .line 9
    new-instance v0, Lcom/android/wm/shell/sysui/ShellInit;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sysui/ShellInit;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
