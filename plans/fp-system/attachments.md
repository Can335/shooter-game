# Attachments

- [ ] Scope
- [ ] Magazine
- [ ] Silencer
- [ ] Muzzle
- [ ] Grip
- [ ] Barrel

Plan:

-Introduction

In this chapter i discuss for what this will be.

This will be important for releasing effects and other stuff For instance: shots smoke, where to shoot the bullet from. Also important for costumization for guns and animating.

-Why for animating?

We wont really animate our guns. We will use point bones. Which refer to IK
Why use this over animating?
1.Can easily build new guns
2.every gun can have the same animation witouth making it look weird.
   3. Easily add attachments to ur gun
   
-Attachments/modifying

we will have an small fake viewport showing the current gun you have an its attacchments. With fake viewport i mean putting the gun infront of the camera instead of viewport frames. This is better because you can see shadows and its looking better.

we will have some types of attachchments:

-Animating attachments (for instance grabbing mag)
-ModifyAttachmentNewPossibility
-ModifyAttachmentCurrent
-AttachmentidentifierType (identifieng if the attachment to modify is a mag/barrel etc)

Back to animating

-Animating 1.1

so the Hands will have an IK constraint so when you move the hands the arms will rotate move accordingly.

with this we can easily just make an main reload and aim method and equip and unequip method that inherits all guns and weapons (reload and aim not for meele)
attack etc

To make these animations similar to real animations and realistic we can add springs/camera shaking while animating and make it an little good package

-Attachment 1.1 

Back to modifying guns/attachment


lets go over the attachment types

Animatingattachments:

this should be obvious this is for moving the arms to spesific pos like the mag etc and grip.

-ModifyAttachmentNewPossibility:

This attachment is inherited by the current part of the gun to show if it extends to a new attachmentpossibility

this is great to built a gun from ground up. And realisticly building it like in real life and attaching parts
