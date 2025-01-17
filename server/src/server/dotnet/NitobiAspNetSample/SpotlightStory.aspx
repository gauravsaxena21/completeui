﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpotlightStory.aspx.cs" Inherits="test.SpotlightStory" MasterPageFile="Site1.Master"  %>
<%@ Register Assembly="NitobiControls" Namespace="Nitobi" TagPrefix="ntb" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="main">
	<ntb:Spotlight runat="server" ID="spt" Theme="Clean" AutoRun="NonPostback">
		<ntb:CalloutStep Title="Centered" Body="By not providing a DOM ID or object to a callout step, you create a centered callout in the tour."  />
		<ntb:CalloutStep AttachedTo="corgi" Title="'Attached to an Image!" Body="can attach a callout to an object by providing the ID." />
		<ntb:CalloutStep AttachedTo="fatmanatee" Title="Scrolling is Automatic">
			<Body>
				Spotlight will automatically scroll an object into view. 
				You can turn this off by setting the allowScrolling attribute to <u>false</u>.
			</Body>
		</ntb:CalloutStep>
		<ntb:CalloutStep AttachedTo="toocute" Title="Final Step" Body="You can exit this tour at any time by clicking the X button" />
	</ntb:Spotlight>
	<div id="lipsum">
		<p>
			<asp:Image runat="server" ID="corgi" ImageUrl="images/SpotlightSample1.jpg" Width="200" ImageAlign="Right" />
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec mauris. Duis sit amet
			mauris. Nullam nec magna. Sed posuere, lacus ut ultricies aliquet, tortor nulla
			tempor urna, vitae rutrum pede est in risus. In rutrum sapien ac quam. Morbi et
			enim. In interdum orci vitae erat. Sed aliquam, massa eget pulvinar condimentum,
			sapien tellus mollis magna, at placerat risus sapien nec nisi. Etiam adipiscing
			consectetuer nunc. In mattis, ligula sit amet varius placerat, quam nulla ultricies
			nulla, vel malesuada tellus nunc sed risus. Sed tortor. Nunc cursus aliquam mauris.
			Donec eu enim. Curabitur odio nibh, venenatis nec, mattis et, ornare at, justo.
			Suspendisse hendrerit massa ac dui. Phasellus orci lectus, placerat a, dignissim
			sed, varius eu, lorem. Aenean lacinia varius tortor. Lorem ipsum dolor sit amet,
			consectetuer adipiscing elit. Duis id ligula. Donec dolor nisi, mollis id, dictum
			vitae, sollicitudin eu, diam.
		</p>
		<p>
			Ut felis lorem, accumsan in, iaculis pellentesque, bibendum nec, mi. Aliquam placerat
			erat id lacus. Duis dui. Nunc dolor lacus, vehicula et, pulvinar ac, elementum id,
			tellus. Donec purus ante, elementum in, ornare et, viverra a, nulla. Quisque id
			mi ac enim commodo convallis. Fusce rhoncus ante id tortor posuere ultrices. Donec
			in metus eget diam faucibus mattis. Nam est nulla, commodo eu, interdum id, imperdiet
			vitae, lorem. Cras vel lacus sed eros bibendum blandit.
		</p>
		<p>
			Cras consectetuer feugiat urna. Pellentesque habitant morbi tristique senectus et
			netus et malesuada fames ac turpis egestas. Ut ultricies leo at nisl. Quisque euismod.
			Quisque lobortis. Phasellus molestie ultricies leo. Suspendisse eu elit nec magna
			egestas sodales. Donec nibh. Praesent mattis est vel odio. Curabitur tincidunt tellus
			non quam. Vestibulum aliquam pretium arcu. Morbi commodo. Maecenas a felis.
		</p>
		<p>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sit amet
			purus. Morbi at nibh sit amet magna rhoncus euismod. Donec ipsum erat, auctor vitae,
			interdum non, pharetra et, elit. Aliquam euismod erat eget enim. Nullam cursus lectus
			at sapien. Etiam feugiat, est fringilla imperdiet iaculis, diam turpis viverra metus,
			eu vehicula mi nisl eu massa. Integer pede dolor, porta id, molestie sed, ullamcorper
			vitae, sapien. Nunc sodales diam eu magna cursus scelerisque. Fusce ut orci. In
			egestas dapibus nisl. Nam non sapien eu lacus venenatis mollis. Integer semper,
			risus in egestas tincidunt, felis orci imperdiet metus, sit amet faucibus lacus
			nisl quis urna. Vivamus nec nibh id augue molestie sodales. Ut urna sapien, aliquet
			non, iaculis et, dignissim a, tortor. Aenean porttitor, dui ac imperdiet condimentum,
			risus nunc faucibus lorem, et mollis nunc tellus vel est.
		</p>
		<p>
			Vestibulum dictum quam vitae sapien. Fusce lacus nisl, semper eget, ornare quis,
			dignissim a, massa. Donec quis magna a orci molestie fermentum. Duis neque. Suspendisse
			nec enim. Morbi ultricies vehicula lectus. Praesent nulla. Nullam eros enim, iaculis
			vel, dapibus eget, gravida vel, risus. Integer at augue vel justo interdum consectetuer.
			Sed sit amet diam. Praesent urna dolor, blandit non, facilisis id, tincidunt ut,
			quam. Suspendisse nec purus. Sed id urna. Etiam eu orci luctus orci ornare tristique.
			Pellentesque dictum ipsum sollicitudin ligula. Maecenas imperdiet lobortis eros.
			Vivamus feugiat urna vel elit.
		</p>
		<p>
			Integer nunc justo, cursus sit amet, porttitor non, accumsan non, lacus. Pellentesque
			sed metus. Aenean vehicula vulputate ipsum. Nam enim lectus, dapibus vitae, iaculis
			at, interdum sit amet, nunc. Quisque blandit porttitor lectus. Aenean euismod sapien
			in libero. Etiam dignissim elit ut metus scelerisque blandit. Nullam scelerisque
			pulvinar neque. Maecenas nisl. Ut non justo quis nibh mattis feugiat. Cras accumsan
			fringilla nisl. Aenean purus. Fusce tempus pede et mi. Etiam mollis nunc quis nisl.
			Praesent gravida ante eget felis. Fusce adipiscing turpis nec neque. Cras porta
			pretium turpis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
			ridiculus mus.
		</p>
		<p>
			Fusce consectetuer egestas nulla. Nullam egestas nulla eget libero. Ut pellentesque
			lorem eleifend nibh. Integer mollis, odio ac congue viverra, metus libero fringilla
			nunc, id ornare erat nunc sit amet nisi. Sed hendrerit bibendum magna. Suspendisse
			potenti. Pellentesque vitae quam vitae lorem blandit scelerisque. Lorem ipsum dolor
			sit amet, consectetuer adipiscing elit. Phasellus sagittis pede sed justo. Ut mauris
			sem, mollis sed, convallis eu, feugiat ac, nisl. Integer egestas rutrum justo. Nulla
			fermentum neque ac est. Nulla condimentum porttitor metus. Nulla nunc. Sed elit
			metus, ultricies cursus, convallis ac, dapibus sit amet, ante. Nunc faucibus tortor
			ac eros. Donec eros odio, gravida elementum, egestas id, pretium in, orci. Nulla
			laoreet libero ac velit. Phasellus egestas.
		</p>
		<p>
			<asp:Image runat="server" ImageUrl="images/SpotlightSample2.jpg" id="fatmanatee" width="325" ImageAlign="Left" />
			Cras condimentum malesuada libero. Sed elementum nisi nec diam. Mauris pretium libero
			vitae lorem. Quisque et diam ut dolor interdum laoreet. Nam condimentum elit sit
			amet nisi. In elit tortor, consequat a, iaculis a, pharetra in, orci. Aenean luctus
			justo non dui. In tristique felis id turpis. Donec turpis ligula, mollis at, tincidunt
			et, nonummy id, enim. Praesent tincidunt. Maecenas ut pede ac libero suscipit euismod.
			Curabitur rutrum, dui sit amet fermentum imperdiet, libero ante egestas diam, vel
			egestas eros nisi vel mauris. Pellentesque habitant morbi tristique senectus et
			netus et malesuada fames ac turpis egestas. Proin eu nisi quis elit nonummy luctus.
			Duis ultricies purus at dui. Fusce a magna.
		</p>
		<p>
			Duis luctus metus eget nulla. Nam vel quam sit amet augue sagittis rhoncus. Donec
			gravida odio at erat. Aliquam congue tellus id libero. Sed consectetuer dui. Donec
			quam justo, semper a, eleifend ut, faucibus eu, pede. Pellentesque enim leo, tincidunt
			sit amet, viverra eu, convallis et, mi. Curabitur ut nibh vel nisl sagittis dignissim.
			Pellentesque volutpat pede ac neque. Mauris nec turpis sagittis elit euismod ultrices.
			Sed eu quam at urna posuere molestie. Ut sed felis id mi facilisis condimentum.
			Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos
			hymenaeos. In velit. Nullam aliquam, urna ut dictum vestibulum, ante leo venenatis
			est, quis cursus nisl neque et dui. Proin laoreet, est vitae varius facilisis, nisi
			leo nonummy nisi, non vehicula tellus ante a elit. Sed pulvinar felis ac lectus.
		</p>
		<p>
			In id massa a felis pulvinar lacinia. Morbi quis magna. Nam augue massa, adipiscing
			ac, luctus nec, vulputate id, massa. Vivamus ut odio. Suspendisse semper metus eu
			erat. Etiam feugiat. Class aptent taciti sociosqu ad litora torquent per conubia
			nostra, per inceptos hymenaeos. Integer nisi nisl, elementum consequat, congue vel,
			egestas ac, erat. Proin volutpat ipsum sed orci. Etiam quam quam, pulvinar sit amet,
			fringilla id, pulvinar at, dolor. Nam pretium velit eget nulla. Proin consectetuer
			neque vitae dolor. Praesent metus. Sed ac urna. Donec non pede. In mi lorem, fringilla
			et, feugiat a, rutrum eget, dui. Pellentesque habitant morbi tristique senectus
			et netus et malesuada fames ac turpis egestas. Morbi orci quam, commodo et, dictum
			eu, ultrices non, magna. In ipsum.
		</p>
		<p>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas id lectus. Sed
			et diam. Cras urna pede, adipiscing non, fringilla sit amet, rutrum vitae, neque.
			Proin luctus tincidunt orci. Ut neque. Duis dapibus rutrum lorem. Ut eget quam ac
			dui venenatis vehicula. Morbi ultricies, diam nec commodo gravida, sem pede aliquam
			mi, nec auctor erat turpis vitae erat. Etiam adipiscing sem et libero.
		</p>
		<p>
			Maecenas placerat leo at nibh. Integer auctor. Cras tempus. Curabitur diam est,
			pharetra nec, viverra at, sodales consequat, mauris. Phasellus eu tortor a ligula
			feugiat rhoncus. Proin libero ante, consequat quis, dapibus nec, ullamcorper at,
			felis. Vivamus urna ante, tincidunt sed, egestas non, rutrum vitae, lectus. Sed
			eget justo. Proin nonummy tempus massa. Curabitur ac augue eu lacus rhoncus laoreet.
			Vestibulum nec lorem. Mauris euismod, ligula ut convallis aliquet, lectus pede consectetuer
			mi, non rutrum tortor neque nec justo. Phasellus euismod. Nunc viverra egestas risus.
			Cras eros ipsum, ultrices id, auctor non, tincidunt a, eros. Curabitur sed dui.
			Proin placerat posuere sapien. Nullam porttitor. Nunc aliquam auctor arcu.
		</p>
		<p>
			In luctus lacinia arcu. Aliquam at purus non eros porttitor placerat. Suspendisse
			potenti. Nunc molestie enim vel mauris. Etiam massa. Vivamus commodo consequat nisl.
			Sed mollis gravida eros. Cras dui velit, placerat consectetuer, porta in, commodo
			quis, libero. Sed dui orci, ornare id, vehicula ac, faucibus ac, quam. Vivamus mollis
			tortor ut sem. Sed eget purus sed mi cursus dictum. Nunc arcu pede, pretium vitae,
			molestie a, iaculis et, dolor. Quisque at tellus. Nam faucibus ligula. Vivamus mattis.
			Donec felis nibh, ullamcorper quis, venenatis nec, tristique in, nibh. Donec vel
			velit ac lectus laoreet blandit.
		</p>
		<p>
			Aliquam ut metus a mi convallis fermentum. Vestibulum ut diam nec nibh tincidunt
			dignissim. Ut euismod posuere urna. Vivamus id quam. Nulla facilisi. Duis ultricies.
			Aenean ante. Praesent turpis felis, vehicula eu, pharetra quis, venenatis rhoncus,
			eros. Aliquam sollicitudin ullamcorper dolor. Pellentesque sem sem, venenatis sed,
			luctus nec, porttitor ac, mauris.
		</p>
		<p>
			Donec justo dui, pretium et, facilisis quis, sodales nec, diam. Quisque ut arcu
			non magna rutrum tristique. Curabitur eu nisi sed purus feugiat ullamcorper. Duis
			molestie pretium sem. Vestibulum id nisl. Vestibulum euismod. Maecenas porta justo
			at dui. In vehicula erat in arcu. Donec placerat ultricies arcu. Sed sagittis, pede
			sollicitudin ultrices mattis, orci massa pellentesque ante, porttitor tempus tortor
			ante id dui. Mauris turpis arcu, congue condimentum, iaculis sed, convallis id,
			sem.
		</p>
		<p>
			Fusce purus. Sed sit amet arcu. Vivamus arcu. Donec mi. Proin ac metus gravida leo
			sagittis pharetra. Praesent elit felis, molestie non, lacinia eu, aliquam vel, dolor.
			Ut magna. Morbi quis neque. Praesent nec neque nec eros vulputate placerat. Phasellus
			eget mi. Aliquam metus. Aenean eu libero sed velit fermentum tempus.
		</p>
		<p>
			Quisque orci metus, vehicula in, condimentum vel, tristique at, tortor. Suspendisse
			non neque sed metus adipiscing ornare. Pellentesque turpis. Integer tincidunt erat
			et leo. Vivamus vitae orci. Suspendisse condimentum neque quis neque. Maecenas laoreet
			lectus auctor libero. Sed massa. Suspendisse sed mauris pulvinar dolor blandit porttitor.
			In auctor tempor nulla. Nulla augue urna, ultricies vel, lacinia sit amet, iaculis
			nec, ligula. Morbi pede sem, scelerisque nec, pellentesque non, blandit quis, urna.
			Sed venenatis egestas erat. Donec risus ante, posuere sit amet, laoreet sed, molestie
			non, nisi.
		</p>
		<p>
			Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
			egestas. Fusce scelerisque porttitor justo. Praesent tortor odio, tempus interdum,
			fringilla et, sagittis vitae, nunc. In at dolor vehicula leo lobortis pharetra.
			Phasellus pulvinar mauris eget turpis. Maecenas leo erat, eleifend nec, semper eget,
			commodo et, urna. Duis luctus faucibus felis. Donec ligula. Nulla vestibulum, nulla
			sit amet scelerisque mollis, enim nulla eleifend massa, vitae semper turpis lacus
			sed augue. Etiam gravida risus a urna. Suspendisse erat neque, mattis at, blandit
			eget, congue commodo, urna. Donec massa.
		</p>
		<p>
			Praesent ultricies. Proin sapien sapien, dignissim eu, dignissim eget, imperdiet
			at, mi. Donec accumsan tortor. Nam vel augue. Aliquam nisl nunc, faucibus nonummy,
			eleifend non, luctus et, arcu. Nunc volutpat. Suspendisse accumsan nulla a orci.
			Ut suscipit sem vel tellus. Proin tincidunt condimentum lectus. Morbi vitae magna.
			Nulla mollis eros eu massa. Suspendisse potenti. Quisque sit amet arcu. Fusce id
			massa vitae lacus placerat placerat. Etiam scelerisque erat quis tellus. Aliquam
			dui eros, tempus quis, bibendum eget, tempus at, ligula.
		</p>
		<p>
			Suspendisse velit. Maecenas ipsum dolor, lobortis at, tincidunt pulvinar, tempus
			non, ligula. Duis molestie, massa porta lobortis lobortis, lacus urna vulputate
			dui, vitae accumsan sem ipsum sed enim. Nunc sem. Etiam eu lacus. Aliquam leo. In
			mattis suscipit magna. Integer eleifend mollis tellus. Praesent placerat. In hac
			habitasse platea dictumst. Mauris aliquet leo ut purus. Etiam accumsan. Aliquam
			erat volutpat. Morbi quis nulla. Morbi sed enim. Cras at ligula nec dolor rutrum
			euismod. Aliquam vitae massa eu eros sagittis ultrices. Nunc nulla. Pellentesque
			non erat eget ipsum blandit pellentesque.
		</p>
		<p>
			Fusce gravida interdum tortor. Sed mattis, ipsum bibendum viverra auctor, enim magna
			gravida enim, eget rutrum ligula turpis et urna. Suspendisse scelerisque scelerisque
			purus. Praesent varius elit a leo. Nam pede sapien, ultrices nec, interdum in, mollis
			et, libero. Fusce rhoncus augue nec ligula. Vestibulum lectus mauris, posuere at,
			nonummy nec, facilisis non, libero. Phasellus ultrices ligula. Suspendisse potenti.
			Mauris eros nulla, vestibulum ut, nonummy quis, aliquam pulvinar, leo. Vestibulum
			vel est at metus tincidunt gravida. Proin nec lorem vitae libero varius dignissim.
			Etiam vestibulum aliquet nunc. Vestibulum ipsum.
		</p>
		<p>
			Quisque enim magna, bibendum ut, interdum vitae, dictum ut, enim. Vestibulum ante
			ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras congue
			turpis a diam. Maecenas dapibus, elit non pharetra vestibulum, est purus cursus
			leo, id mattis sapien orci at neque. Ut fermentum tempor nisi. Nunc venenatis. Quisque
			malesuada, mauris congue ultricies tristique, ligula magna commodo orci, ut nonummy
			nunc erat in lectus. Etiam neque orci, condimentum at, blandit interdum, congue
			nec, velit. Duis turpis. Morbi in arcu sit amet erat vestibulum varius. Quisque
			fermentum arcu sit amet nisl. Nullam vestibulum tempor nibh. Sed eu libero. Ut dignissim
			leo id tortor. Quisque ac mi quis ante fringilla lobortis.
		</p>
		<p>
			Duis facilisis, felis sed vehicula euismod, turpis mauris lacinia urna, et ultricies
			mi tellus sit amet purus. Cras cursus porta pede. Integer et metus. Nulla massa
			orci, fringilla at, ullamcorper vel, accumsan eget, lorem. Sed at nibh. Sed quis
			tellus eu magna lobortis adipiscing. Donec justo pede, vehicula at, egestas id,
			adipiscing at, metus. Curabitur mi dolor, fermentum sed, faucibus eget, fermentum
			id, justo. Sed eu velit. Mauris sodales, nibh ut lobortis vestibulum, mi dui cursus
			ante, a consequat tellus diam sed mi. Sed ornare.
		</p>
		<p>
			In consequat, lectus vel lacinia lobortis, diam ante varius mi, sed sodales tortor
			libero sed mi. Nam hendrerit, odio eget pretium elementum, massa sem porttitor enim,
			eu fringilla dolor enim at justo. Sed neque. Vestibulum mattis. Aliquam tincidunt,
			nulla non dapibus tempus, quam ipsum euismod magna, mattis consequat nunc sem ac
			orci. Nam accumsan ante eget nisl. Praesent nisl massa, pretium a, faucibus sit
			amet, mollis sed, sem. Vivamus purus. Nunc non sem. Nulla id tellus. Nunc commodo
			commodo nulla. Pellentesque hendrerit mauris in mi feugiat viverra. Aenean enim
			sem, hendrerit nec, placerat quis, sollicitudin sed, nulla. Nullam et metus. Donec
			a libero. Praesent eu dolor.
		</p>
		<p>
			<asp:Image runat="server" ImageUrl="images/SpotlightSample3.jpg" id="toocute" width="220" ImageAlign="Right"/>
			Vestibulum
			aliquet magna eget libero. Aliquam erat volutpat. Nam eget metus. Fusce nec felis.
			Pellentesque sagittis, diam congue blandit tincidunt, augue purus posuere ligula,
			quis gravida metus dui sodales velit. Nam rutrum. Etiam bibendum bibendum metus.
			Maecenas eget mi ut justo lacinia rutrum. Donec imperdiet. Maecenas nibh erat, lacinia
			a, bibendum vitae, ullamcorper in, ante. Suspendisse neque quam, auctor at, malesuada
			sed, molestie a, mauris. Nam iaculis congue massa. Nam a elit. Nam ipsum purus,
			ultricies ut, ultricies eu, pharetra sed, lorem. Duis sollicitudin lacus eleifend
			leo. Quisque metus lacus, faucibus quis, aliquam eget, venenatis et, nisi. Nullam
			scelerisque consequat nunc. Aenean quis pede. Nulla justo sapien, lobortis nec,
			rhoncus sit amet, malesuada et, neque.
		</p>
	</div>
</asp:Content>