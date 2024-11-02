.class public final Lcom/android/systemui/shade/ShadeHeaderController$darkModelEasel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$darkModelEasel$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final drawDarkModelPicture()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/shade/ShadeHeaderController;->Companion:Lcom/android/systemui/shade/ShadeHeaderController$Companion;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$darkModelEasel$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateColors()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
