.class public final Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Ljava/util/Set;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$key:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$it:Ljava/util/Set;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$key:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$it:Ljava/util/Set;

    .line 6
    .line 7
    sget-object v2, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->putPackagesSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
