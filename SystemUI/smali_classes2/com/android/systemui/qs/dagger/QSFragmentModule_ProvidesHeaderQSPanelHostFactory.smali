.class public final Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final hostProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final resourcePickerProvider:Ljavax/inject/Provider;

.field public final viewProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
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
    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->viewProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->hostProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->resourcePickerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    return-void
.end method

.method public static providesHeaderQSPanelHost(Landroid/view/View;Lcom/android/systemui/qs/QSTileHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)Lcom/android/systemui/qs/QSPanelHost;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/qs/QSPanelHost;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const v0, 0x7f0a087c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object v0, v6

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSPanelHost;-><init>(ILandroid/view/View;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    .line 16
    .line 17
    .line 18
    return-object v6
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->viewProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->hostProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/systemui/qs/QSTileHost;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    .line 18
    .line 19
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->resourcePickerProvider:Ljavax/inject/Provider;

    .line 26
    .line 27
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 32
    .line 33
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->providesHeaderQSPanelHost(Landroid/view/View;Lcom/android/systemui/qs/QSTileHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)Lcom/android/systemui/qs/QSPanelHost;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
