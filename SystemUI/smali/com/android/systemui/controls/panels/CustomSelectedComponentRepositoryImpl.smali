.class public final Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository;


# instance fields
.field public final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSelectedComponent()Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v0, "controls_custom_component"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    new-instance v1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;

    .line 14
    .line 15
    const-string v2, "controls_custom_structure"

    .line 16
    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "controls_custom_is_panel"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-direct {v1, v2, v0, p0}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public final setSelectedComponent(Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;->componentName:Landroid/content/ComponentName;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    const-string v1, "controls_custom_component"

    .line 18
    .line 19
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "controls_custom_structure"

    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;->name:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "controls_custom_is_panel"

    .line 32
    .line 33
    iget-boolean p1, p1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;->isPanel:Z

    .line 34
    .line 35
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
